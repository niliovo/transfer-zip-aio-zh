#!/bin/sh
apk add --no-cache git nodejs npm
git clone https://github.com/robinkarlberg/transfer.zip-web.git tmp
mv tmp/* .
cd signaling-server
npm i
cd ..
cp web-server/nginx.conf /etc/nginx/conf.d/nginx.conf
sed -i "s|lang=\"en\"|lang=\"zh-CN\"|g" web-server/src/static/index.html
sed -i "s|Send 1TB+ files for free, in realtime|实时免费发送1TB+文件|g" web-server/src/static/index.html
sed -i "s|Free, fast and encrypted realtime file transfer between browsers using peer2peer. Send unlimited files with any size for free!|免费，快速和加密的实时文件传输浏览器之间使用P2P。免费发送任意大小的无限文件!|g" web-server/src/static/index.html
sed -i "s|Error|错误|g" web-server/src/static/index.html
sed -i "s|User cancelled the download.|用户取消下载。|g" web-server/src/static/index.html
sed -i "s|Ok|好的|g" web-server/src/static/index.html
sed -i "s|Free, Fast, Encrypted|免费，快速，加密传输|g" web-server/src/static/index.html
sed -i "s|\"Send\"|\"发送\"|g" web-server/src/static/index.html
sed -i "s|Waiting for peer...|等待对端|g" web-server/src/static/index.html
sed -i "s|Link copied to clipboard|链接已复制到剪切板|g" web-server/src/static/index.html
sed -i "s|Share by link|分享链接|g" web-server/src/static/index.html
sed -i "s|Data sent with this service is end-to-end encrypted and transferred in realtime between|使用此服务发送的数据是端到端加密的，并在浏览器之间实时传输。不管是明文或加密，都不会接触到服务器，服务器也没有文件数据。|g" web-server/src/static/index.html
sed -i "s|browsers. No file data, plaintext or encrypted, ever touches the server.||g" web-server/src/static/index.html
sed -i "s|Home|主页|g" web-server/src/static/index.html
sed -i "s|About|关于|g" web-server/src/static/index.html
sed -i "s|Privacy Policy|隐私策略|g" web-server/src/static/index.html
sed -i "s|View on GitHub</a>|在GitHub上查看</a>\n<a class="mx-1" href="https://github.com/niliovo/transfer.zip-aio-zh">汉化By倪狸</a>|g" web-server/src/static/index.html

sed -i "s|WebSocket error: could not connect to server|WebSocket错误:无法连接到服务器|g" web-server/src/static/index.js
sed -i "s|Remote peer disconnected|远端连接断开|g" web-server/src/static/index.js
sed -i "s|Could not connect to remote peer, check your firewall settings or try connecting to another network|无法连接到远程对等端，请检查防火墙设置或尝试连接到另一个网络|g" web-server/src/static/index.js
sed -i "s|\"Error\",|\"错误\",|g" web-server/src/static/index.js
sed -i "s|Error!|错误!|g" web-server/src/static/index.js
sed -i "s|Transferring file...|传输文件中...|g" web-server/src/static/index.js
sed -i "s|Done!|完成!|g" web-server/src/static/index.js
sed -i "s|Send error|发送出错|g" web-server/src/static/index.js
sed -i "s|Receive error|接收出错|g" web-server/src/static/index.js

sed -i "s|lang=\"en\"|lang=\"zh-CN\"|g" web-server/src/static/about/index.html
sed -i "s|About|关于|g" web-server/src/static/about/index.html
sed -i "s|is a web application that allows you to easily|是一个web应用程序，允许您轻松地在两台设备之间传输文件。目前，transfer.zip是在网络上共享文件最简单、最安全的方式。没有注册，没有等待，没有废话，文件可以像你想要的那么大。|g" web-server/src/static/about/index.html
sed -i "s|transfer files between two devices. At the moment, transfer.zip is the easiest and most secure||g" web-server/src/static/about/index.html
sed -i "s|way to share files on the web. There is no signup, no wait and no bullshit, and the files can be||g" web-server/src/static/about/index.html
sed -i "s|as large as you want.||g" web-server/src/static/about/index.html
sed -i "s|It uses|它使用|g" web-server/src/static/about/index.html
sed -i "s|for peer-to-peer data transfer, meaning the|进行点对点数据传输，这意味着文件直接在对等点之间流式传输，而不是在过程中存储在任何地方，甚至不是在transfer.zip服务器上。为了让对等体最初发现彼此，在NodeJS中使用WebSockets实现了通信服务器，重要的是没有发送敏感数据。此外,文件数据端到端加密使用|g" web-server/src/static/about/index.html
sed -i "s|files are streamed directly between peers and not stored anywhere in the process, not even on||g" web-server/src/static/about/index.html
sed -i "s|transfer.zip servers. To let peers initially discover each other, a signaling server is||g" web-server/src/static/about/index.html
sed -i "s|implemented in NodeJS using WebSockets, which importantly no sensitive data is sent through. In||g" web-server/src/static/about/index.html
sed -i "s|addition, the file data is end-to-end encrypted using||g" web-server/src/static/about/index.html
sed -i "s|with a client-side 256|通过客户端生成的256位密钥，这意味着如果有人可以冒充对等体或捕获流量，他们将无法在不知道密钥的情况下解密文件。因为文件是直接在对等体之间传输的，|g" web-server/src/static/about/index.html
sed -i "s|bit generated key, meaning if someone could impersonate a peer or capture the traffic, they||g" web-server/src/static/about/index.html
sed -i "s|would not be able to decrypt the file without knowing the key. Because the file is streamed||g" web-server/src/static/about/index.html
sed -i "s|directly between peers,||g" web-server/src/static/about/index.html
sed -i "s|there are <b>no file size or bandwidth limitations</b>.|<b>没有文件大小或带宽限制</b>。|g" web-server/src/static/about/index.html
sed -i "s|The easiest way to transfer a file is to scan the QR code containing the file link and|传输文件最简单的方法是扫描包含文件链接和加密密钥的二维码。也可以复制链接并通过您最喜欢的媒介将其共享到接收端。|g" web-server/src/static/about/index.html
sed -i "s|encryption key. It is also possible to copy the link and share it to the receiving end over what||g" web-server/src/static/about/index.html
sed -i "s|medium you prefer the most.||g" web-server/src/static/about/index.html
sed -i "s|Known Problems|已知问题|g" web-server/src/static/about/index.html
sed -i "s|Because of how peer-to-peer works, some network firewalls may not allow direct connections|由于点对点的工作方式，一些网络防火墙可能不允许设备之间的直接连接。|g" web-server/src/static/about/index.html
sed -i "s|between devices.||g" web-server/src/static/about/index.html
sed -i "s|A solution for this is to use a|解决的办法为使用|g" web-server/src/static/about/index.html
sed -i "s|, effectively relaying|，通过第三方服务器有效地传递所有文件数据，尽管是加密的。然而，这违背了本服务的全部目的，即尽可能地安全。|g" web-server/src/static/about/index.html
sed -i "s|all file data, although encrypted, through a third party server. That is however against the||g" web-server/src/static/about/index.html
sed -i "s|whole purpose of this service, which is to be as secure as possible.||g" web-server/src/static/about/index.html
sed -i "s|On some Safari browsers, the file download will not work because of bugs on Apple's part.|在一些Safari浏览器上，由于苹果方面的漏洞，文件下载无法正常工作。|g" web-server/src/static/about/index.html
sed -i "s|Home|主页|g" web-server/src/static/about/index.html
sed -i "s|Privacy Policy|隐私策略|g" web-server/src/static/about/index.html
sed -i "s|View on GitHub</a>|在GitHub上查看</a>\n<a class="mx-1" href="https://github.com/niliovo/transfer.zip-aio-zh">汉化By倪狸</a>|g" web-server/src/static/about/index.html

sed -i "s|Privacy Policy</title>|隐私策略</title>|g" web-server/src/static/privacy-policy/index.html
sed -i "s|Privacy Policy</h1>|隐私策略</h1>|g" web-server/src/static/privacy-policy/index.html
sed -i "s|Thank you for visiting Transfer.zip. This Privacy Policy outlines how we handle and protect your|感谢您访问Transfer.zip。本隐私政策概述了当您使用我们的网站时，我们如何处理和保护您的个人信息。请仔细阅读本政策，以了解我们对您的数据的做法以及我们如何确保您的隐私。|g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        personal information when you use our website. Please read this policy carefully to understand||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        practices regarding your data and how we ensure your privacy.||g" web-server/src/static/privacy-policy/index.html
sed -i "s|Information We Collect|我们收集的信息|g" web-server/src/static/privacy-policy/index.html
sed -i "s|We want to assure you that we do not collect any personal data or personally identifiable|我们向您保证，当您访问Transfer.zip时，我们不会收集任何个人数据或个人身份信息(PII)。我们已经设计了我们的网站是完全匿名和尊重您的隐私。|g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        information (PII) when you visit Transfer.zip. We have designed our website to be entirely||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        and respect your privacy.||g" web-server/src/static/privacy-policy/index.html
sed -i "s|Use of Cookies|Cookies的使用|g" web-server/src/static/privacy-policy/index.html
sed -i "s|Transfer.zip does not use cookies or any similar tracking technologies. We do not employ any form|Transfer.zip不使用cookie或任何类似的跟踪技术。我们不使用任何形式的分析或广告 cookie 来跟踪您的在线活动。|g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        analytics or advertising cookies that could track your online activities.||g" web-server/src/static/privacy-policy/index.html
sed -i "s|External Links|外部链接|g" web-server/src/static/privacy-policy/index.html
sed -i "s|Our website may contain links to external websites or resources that are not operated or|我们的网站可能包含指向外部网站或资源的链接，这些网站或资源并非由我们运营或控制。一旦您点击这些链接，您将被重定向到外部网站，其隐私政策将对您的信息收集和使用进行管理。我们无法控制这些第三方网站的内容或做法，也不对其隐私做法负责。我们建议您查看您访问的任何外部网站的隐私政策。|g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        by us. Once you click on these links, you will be redirected to external websites, and their||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        policies will govern the collection and use of your information. We do not have control over the||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        content or practices of these third-party websites and cannot be held responsible for their||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        practices. We recommend reviewing the privacy policies of any external websites you visit.||g" web-server/src/static/privacy-policy/index.html
sed -i "s|Contact Information|联系信息|g" web-server/src/static/privacy-policy/index.html
sed -i "s|If you have any questions, concerns, or inquiries regarding this Privacy Policy or the practices|如果您对本隐私政策或 Transfer.zip 的做法有任何问题、疑虑或咨询，可通过 github 页面联系我们。我们将尽一切努力及时回复您的来信。|g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        Transfer.zip, you can contact us via the github page. We will make every effort||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        to respond to your communication promptly.||g" web-server/src/static/privacy-policy/index.html
sed -i "s|Changes to the Privacy Policy|隐私政策的变更|g" web-server/src/static/privacy-policy/index.html
sed -i "s|We reserve the right to modify or update this Privacy Policy at any time. Any changes made will|我们保留随时修改或更新本隐私政策的权利。任何更改将在修订后的隐私政策在Transfer.zip上发布后立即生效。我们鼓励您定期查看本隐私政策，以便随时了解我们如何保护您的信息。|g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        effective immediately upon posting the revised Privacy Policy on Transfer.zip. We encourage you||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        review this Privacy Policy periodically to stay informed about how we are protecting your||g" web-server/src/static/privacy-policy/index.html
sed -i "s|Data Security|数据安全|g" web-server/src/static/privacy-policy/index.html
sed -i "s|At Transfer.zip, we prioritize the security and privacy of our users. We have implemented|在Transfer.zip，我们优先考虑用户的安全和隐私。虽然我们不会在我们的服务器上收集或存储任何用户信息，但我们已采取措施确保您的数据得到保护。我们的网站以客户端方式运行，这意味着所有数据处理和存储都在您的设备上本地进行。|g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        to ensure the protection of your data, although we do not collect or store any user information||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        our servers. Our website operates in a client-side manner, which means that all data processing||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        storage occur locally on your device.||g" web-server/src/static/privacy-policy/index.html
sed -i "s|As a result, we do not have access to or control over any data you generate or manipulate on our|因此，我们无法访问或控制您在我们网站上生成或操作的任何数据。这种方法消除了我们对用户数据实施特定安全措施的需要，因为没有信息在我们的服务器上传输或存储。您在Transfer.zip上处理的任何数据都将保留在您的设备和浏览器的范围内。|g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        website. This approach eliminates the need for us to implement specific security measures for||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        data, as no information is transmitted or stored on our servers. Any data you handle on||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        remains within the confines of your device and browser.||g" web-server/src/static/privacy-policy/index.html
sed -i "s|While we take reasonable steps to ensure the security of our website and maintain a safe browsing|虽然我们采取合理的措施来确保我们网站的安全并维护一个安全的浏览环境，但重要的是要记住，您的设备和浏览器设置的安全最终是您的责任。我们建议您保持操作系统、浏览器和安全软件的最新状态，以尽量减少潜在的风险。|g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        environment, it is important to remember that the security of your device and browser settings||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        ultimately your responsibility. We recommend keeping your operating system, browser, and||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        software up to date to minimize potential risks.||g" web-server/src/static/privacy-policy/index.html
sed -i "s|Compliance with Laws|遵守法律|g" web-server/src/static/privacy-policy/index.html
sed -i "s|Transfer.zip complies with all applicable data protection laws and regulations. This Privacy|Transfer.zip符合所有适用的数据保护法律法规。本隐私政策旨在符合《通用数据保护条例》(GDPR)和其他相关隐私法律。|g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        is intended to be in line with the General Data Protection Regulation (GDPR) and other relevant||g" web-server/src/static/privacy-policy/index.html
sed -i "s|Consent|同意书|g" web-server/src/static/privacy-policy/index.html
sed -i "s|By using Transfer.zip, you consent to the terms outlined in this Privacy Policy and agree to the|通过使用Transfer.zip，您同意本隐私政策中概述的条款，并同意按本政策所述收集、使用和披露您的信息。|g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        collection, use, and disclosure of your information as described herein.||g" web-server/src/static/privacy-policy/index.html
sed -i "s|If you do not agree with this Privacy Policy, please refrain from using Transfer.zip.|如果您不同意本隐私政策，请不要使用Transfer.zip。|g" web-server/src/static/privacy-policy/index.html
sed -i "s|Please note that this privacy policy is for informational purposes only and should not be|请注意，本隐私政策仅供参考，不应被视为法律建议。如需详细的法律建议，请咨询合格的律师。|g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        as legal advice. For detailed legal advice, please consult a qualified attorney.||g" web-server/src/static/privacy-policy/index.html
sed -i "s|Home|主页|g" web-server/src/static/privacy-policy/index.html
sed -i "s|About|关于|g" web-server/src/static/privacy-policy/index.html
sed -i "s|Privacy Policy</a>|隐私策略</a>|g" web-server/src/static/privacy-policy/index.html
sed -i "s|View on GitHub</a>|在GitHub上查看</a>\n<a class="mx-1" href="https://github.com/niliovo/transfer.zip-aio-zh">汉化By倪狸</a>|g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        our||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        anonymous||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        of||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        be||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        to||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        on||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        and||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        controlled||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        information.||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        measures||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        user||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        are||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        security||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        Policy||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        privacy laws.||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        privacy||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        Transfer.zip||g" web-server/src/static/privacy-policy/index.html
sed -i "s|                        considered||g" web-server/src/static/privacy-policy/index.html

sed -i "s|recipient does not exist|收件人不存在|g" signaling-server/index.js

mkdir -p /var/www/static
cp -R web-server/src/static /var/www/
rm /etc/nginx/conf.d/default.conf
echo "#!/bin/sh

npm start --prefix signaling-server &

nginx -g 'daemon off;' &

wait" > web-server/run-server
cp web-server/run-server /usr/local/bin
sed -i "s|http://signaling-server:8001|http://0.0.0.0:8001|g" /etc/nginx/conf.d/nginx.conf
