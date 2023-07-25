<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Fri Jul 25 12:41:57 PDT 2008 -->


<TestCase name="Send" version="2">
<id>cb5899e9</id>
<Documentation>Send an email.&#10;&#10;Note: Authentication with username/password is not supported. The SMTP server must be set with no authentication.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjAuNSAoNDY5Nykmbm9kZXM9NzA5OTc1NTcw</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>host</key>
    <value>smtp.tibco.com</value>
    <name>SMTP host</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>25</value>
    <name>SMTP port</name>
    </Parameter>
    <Parameter>
    <key>subject</key>
    <value></value>
    <name>Message subject</name>
    </Parameter>
    <Parameter>
    <key>from</key>
    <value></value>
    <name>From field</name>
    </Parameter>
    <Parameter>
    <key>replyTo</key>
    <value></value>
    <name>Reply To field</name>
    </Parameter>
    <Parameter>
    <key>to</key>
    <value></value>
    <name>List of recipients separated by semi colon</name>
    </Parameter>
    <Parameter>
    <key>cc</key>
    <value></value>
    <name>List of recipients separated by semi colon</name>
    </Parameter>
    <Parameter>
    <key>bcc</key>
    <value></value>
    <name>List of recipients separated by semi colon</name>
    </Parameter>
    <Parameter>
    <key>message</key>
    <value></value>
    <name>Message content</name>
    </Parameter>
    <Parameter>
    <key>type</key>
    <value>text/plain</value>
    <name>Mime type of the message</name>
    </Parameter>
    <Parameter>
    <key>attachment</key>
    <value></value>
    <name>full path to files separated by semi colon</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.sendEmail.rsp</key>
    <value>Set in Step sendEmail</value>
    </Parameter>
    <Parameter>
    <key>lisa.sendEmail.rsp.time</key>
    <value>Set in Step sendEmail</value>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp</key>
    <value>Set in Step validate</value>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp.time</key>
    <value>Set in Step validate</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value>Set in Step log</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>default</name>
<external>false</external>
<props>
</props>
</Configuration>
</Configurations>
    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validate" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
      <log>Sending email...&#10;Subject: {{subject}}&#10;To: {{to}}&#10;Cc: {{cc}}&#10;Bcc: {{bcc}}</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="sendEmail" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>baseErrorMsg = &quot;Email validation error&quot;;&#10;&#10;if (host.equals(&quot;&quot;))&#10;  return baseErrorMsg + &quot;: Host is required&quot;;&#10;&#10;if (port.equals(&quot;&quot;))&#10;  return baseErrorMsg + &quot;: Port field is required&quot;;&#10;&#10;if (subject.equals(&quot;&quot;))&#10;  return baseErrorMsg + &quot;: Subject field is required&quot;;&#10;&#10;if (from.equals(&quot;&quot;))&#10;  return baseErrorMsg + &quot;: From field is required&quot;;&#10;&#10;if (to.equals(&quot;&quot;))&#10;  return baseErrorMsg + &quot;: To field is required&quot;;&#10;&#10;if (type.equals(&quot;&quot;))&#10;  return baseErrorMsg + &quot;: Type field is required&quot;;&#10;&#10;return &quot;Email validation success&quot;;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Any Exception Then Fail" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert95" >
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
        <param>Email validation error</param>
</CheckResult>

    </Node>


    <Node name="sendEmail" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>import javax.mail.*;&#10;import javax.mail.internet.*;&#10;import java.util.*; &#10;import javax.activation.FileDataSource;&#10;import javax.activation.DataHandler;&#10;&#10;// do not modify these 2 string. Assertions exist.&#10;baseErrorMsg = &quot;Error sending email&quot;;&#10;baseSuccessMsg = &quot;Email sent&quot;;&#10;&#10;void postMail(String host, String port, /*String user, String password,*/ String[] recipientsTo, String[] recipientsCc, String[] recipientsBcc, String subject, String message, String[] attachment, String type , String from, String replyTo) throws MessagingException&#10;{&#10;    boolean debug = false;&#10;&#10;    //create some properties &#10;    Properties props = null;&#10;    props = new Properties();&#10;    props.put(&quot;mail.smtp.host&quot;, host);&#10;    props.put(&quot;mail.smtp.port&quot;, port);&#10;    //props.put(&quot;mail.smtp.user&quot;, user);&#10;    //props.put(&quot;mail.smtp.password&quot;, password);&#10;&#10;    // and get the default Session&#10;    Session session = null;&#10;    session = Session.getInstance(props);&#10;    session.setDebug(debug);&#10;&#10;    // create a message&#10;    Message msg = new MimeMessage(session);&#10;    Multipart mp = new MimeMultipart();&#10;&#10;    // Add text to message&#10;    MimeBodyPart textPart = new MimeBodyPart();&#10;    textPart.setContent(message, type);&#10;    mp.addBodyPart(textPart);&#10;&#10;    // Add Attachments if any&#10;    if (attachment.length == 1 &amp;&amp; attachment[0].equals(&quot;&quot;)) {&#10;        ; // No attachment. Do nothing&#10;    }&#10;    else {  // Add all the attachments to the message&#10;      for (int i = 0; i &lt; attachment.length; i++) {&#10;        MimeBodyPart attachFilePart = new MimeBodyPart();&#10;        FileDataSource fds = new FileDataSource(attachment[i]);&#10;        attachFilePart.setDataHandler(new DataHandler(fds));&#10;        attachFilePart.setFileName(fds.getName());&#10;        mp.addBodyPart(attachFilePart);&#10;      }&#10;    }&#10;&#10;    // set the from, replyTo and to address&#10;    InternetAddress addressFrom = new InternetAddress(from);&#10;    msg.setFrom(addressFrom);&#10;&#10;    // if there is a replyTo field &#10;    if (!replyTo.equals(&quot;&quot;)) {&#10;      InternetAddress addressReplyTo = new InternetAddress(replyTo);&#10;      InternetAddress[] addressReplyToTable = {addressReplyTo};&#10;      msg.setReplyTo(addressReplyToTable); &#10;    }&#10;&#10;    // To Recipients &#10;    InternetAddress[] addressTo = new InternetAddress[recipientsTo.length]; &#10;    for (int i = 0; i &lt; recipientsTo.length; i++)&#10;    {&#10;        addressTo[i] = new InternetAddress(recipientsTo[i]);&#10;    }&#10;    msg.setRecipients(Message.RecipientType.TO, addressTo);&#10;&#10;    // CC Recipients&#10;    if (recipientsCc.length == 1 &amp;&amp; recipientsCc[0].equals(&quot;&quot;)) {&#10;       ; // No CC recipients. Do nothing&#10;    }&#10;    else { // Add CC recipients&#10;      InternetAddress[] addressCc = new InternetAddress[recipientsCc.length]; &#10;      for (int i = 0; i &lt; recipientsCc.length; i++)&#10;      {&#10;            addressCc[i] = new InternetAddress(recipientsCc[i]);&#10;      }&#10;      msg.setRecipients(Message.RecipientType.CC, addressCc);&#10;    }&#10;&#10;    // BCC Recipients&#10;    if (recipientsBcc.length == 1 &amp;&amp; recipientsBcc[0].equals(&quot;&quot;)) {&#10;       ; // No BCC recipients. Do nothing&#10;    }&#10;    else { // Add BCC recipients&#10;      InternetAddress[] addressBcc = new InternetAddress[recipientsBcc.length]; &#10;      for (int i = 0; i &lt; recipientsBcc.length; i++)&#10;      {&#10;            addressBcc[i] = new InternetAddress(recipientsBcc[i]);&#10;      }&#10;      msg.setRecipients(Message.RecipientType.BCC, addressBcc);&#10;    }&#10;&#10;    // Setting the Subject and Content Type&#10;    msg.setSubject(subject);&#10;    msg.setContent(mp);&#10;    Transport.send(msg);&#10;}&#10;&#10;// Main&#10;try {&#10;String[] recipientToList = testExec.parseInState(to).split(&quot;;&quot;);&#10;String[] recipientCcList = testExec.parseInState(cc).split(&quot;;&quot;);&#10;String[] recipientBccList = testExec.parseInState(bcc).split(&quot;;&quot;);&#10;String[] attachmentList = testExec.parseInState(attachment).replace(&apos;\\&apos;,&apos;/&apos;).split(&quot;;&quot;);&#10;&#10;/*&#10;With Beanshell version earlier than 2.0, we cannot extends classes.&#10;So supporting authentication in SMTP is difficult.&#10;One way would be to put all this code in a real java class and call it.&#10;&#10;SMTPAuthenticator extends Authenticator {&#10;  PasswordAuthentication getPasswordAuthentication() {&#10;    String username = user;&#10;    String password = password;&#10;    return new PasswordAuthentication(username, password);&#10;  }&#10;  return this;&#10;}&#10;auth = SMTPAuthenticator();&#10;*/&#10;&#10;postMail(testExec.parseInState(host), testExec.parseInState(port.toString()), /*testExec.parseInState(user), testExec.parseInState(password),*/ recipientToList, recipientCcList, recipientBccList, testExec.parseInState(subject), testExec.parseInState(message), attachmentList, testExec.parseInState(type), testExec.parseInState(from), testExec.parseInState(replyTo));&#10;}&#10;catch (Exception e) {&#10; return baseErrorMsg + &quot;: &quot; + e.toString();&#10;}&#10;return baseSuccessMsg + &quot;: &quot; + testExec.parseInState(subject);</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Any Exception Then Fail" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert94" >
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
        <param>Error sending email</param>
</CheckResult>

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
    </Node>


</TestCase>
