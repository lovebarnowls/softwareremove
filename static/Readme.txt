You are the system administrator for the retired defenders league.  The previous administrator has been working hard with userids, but has been slacking off defensive protocols.

Authorized administrators:

	ubuntu
	terry

Authorized users:

	maldini


As the previous administrator has been slacking off security protocols, you might want to look into how to fortify this workstation.

This workstation is used for web browsing, e-mail and word processing only.  No multimedia files or other applications should be installed.

Company password policy requires that passwords should be complex and of a sufficient length to prevent brute-force attacks.  Passwords on all accounts should be changed on a regular basis, and users should not be able to reuse their recent passwords.  Policies should be implemented to prevent attackers from repeatedly guessing passwords.

The only people who should be able to remotely access the computer are the administrators, and ssh is the only remote access software permitted.
Due to organizational policies, maldini, who does not have a security clearence, cannot be granted permission to ssh.
sql must be removed for all users.

Security patches for the operating system and all critical software should be kept up to date.
<B>Note: For this image, please DO NOT RUN sudo apt-get update && upgrade, as we have over 1GB of updates required, which will take a long time and server cost. You are free to do so for our final image.</B>

Auditing should be enable to allow the security team to determine who tries to log into the system.

Critical services: SSH APACHE
