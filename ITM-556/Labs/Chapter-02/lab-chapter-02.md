# Chapter 02 Labs

## Activity 1

Most of the popular and functional pieces of software you use everyday involve Free and OpenSource. Choose 2 case studies from [https://highscalability.com](https://highscalability.com "High Scalability") and write a review of the company's architecture based the listed items.

You can find them at [https://highscalability.com/blog/category/example](http://highscalability.com/blog/category/example "Case Study Examples")  or look on the High Scalability website on the lower right hand side for the "All Time Favorites" header to find some of the more popular services.   It's best to find a company that you use or support.

Answer these questions (not all of the Answers are in each case study!)

1. What market does that company serve? (What do they do?) And have they always served that market?
* Netflix serves the entertainment industry .It provides High quality , multi-platform support streaming service.It makes use of licenses along with usage rights in order to stream content.At first Netflix rented DVDs through the US Postal Service but later moved to on-demand video streaming.
1. What Operating System(s) are used?
* Netflix makes use of FreeBSD operating system.
1. What programming languages/frameworks are used?
* Netflix makes use of python for its full content lifecycle .Netflix uses React framework for the frontend.
1. What storage and what database technologies are used?
* Netflix makes use of three NoSQL databases for different usecases such as Cassandra for its scalablity and lack of single point failure,HBase for its use of hdfs as a shared sto 
1. What Opensource license is the technology stack licensed under?
* Netflix makes use of Apache Cassandra which is an Apache licensed open source software.
1. What is the current stock price and what was the IPO of the company? (if traded publicly.)
* Netflix currently trades at $516.05 but when it was initially listed was $15 a share.
1. What major obstacle (cost, system performance, QPS, etc, etc) was the company trying to overcome by implementing this technology stack?
* Building a datacenter is very difficult and Netflix was trying to build and maintain two datacenters .During August 2008 Netflix experienced major outage in its on-premise datacenters which lasted for three days.
1. What can you learn from this article relating to technology and infrastructure?
* The most popular streaming service is a big user of open source softwares . Netflix not only made use of open source but also contributed to to fixes in Cassandra in AWS. They were the first ones to move to the cloud . Many have made use of migration architecture contributed by Netflix.

Each Student will give a 1-2 minute presentation of one of their papers the following class.

1. What market does that company serve? (What do they do?) And have they always served that market?
* Facebook serves the social media advertizing industry.It started as a university app for students at Harvard University for judginf people based on attractiveness but was later joined by masses and Facebook has forever been adding features since. 
1. What Operating System(s) are used?
* Facebook makes use of Linux operating system but has modified it for network throughput.
1. What programming languages/frameworks are used?
* Facebook uses PHP for its front end.Erlang is used for chat. They have an internally developed cross-language framework called thrift that ties all languages together making it possible for them to talk.Facebook makes use of React which is an opensource javascript library for thier UI.
1. What storage and what database technologies are used?
* Facebook makes use of MySQL as primary database management system.Since it is easy to manage the huge number of MYSQL servers, so providing good quality service becomes easy at the same time.It also uses Hbase, Cassandra(no longer used by facebook but still used by instagram),Memcached and Haystack.
1. What Opensource license is the technology stack licensed under?
* Facebook makes use of Apache Cassandra which is an Apache licensed open source software.Linux which is licensed under OpenSourceInitiative.MySQL is licensed under GPL.Memcached is licensed under Revised BSD license.HBase uses Apache license 2.0.
1. What is the current stock price and what was the IPO of the company? (if traded publicly.)
* Facebook currently trades at $282.73 but when it was initially listed was $38 a share.
1. What major obstacle (cost, system performance, QPS, etc, etc) was the company trying to overcome by implementing this technology stack?
* 
1. What can you learn from this article relating to technology and infrastructure?
* 



## Activity 2

Read these four articles.  It's a commentary on the Opensource license changes, a response from one of the CEOs, and then a reply to the response.

1) [http://dtrace.org/blogs/bmc/2018/12/14/open-source-confronts-its-midlife-crisis/](http://dtrace.org/blogs/bmc/2018/12/14/open-source-confronts-its-midlife-crisis/ "OpenSource confronts its midlife crisis")
1) [https://medium.com/\@jaykreps/a-quick-comment-on-bryan-cantrills-blog-on-licensing-8dccee41d9e6/](https://medium.com/\@jaykreps/a-quick-comment-on-bryan-cantrills-blog-on-licensing-8dccee41d9e6/ "Quick Comment on Licensing")
1) [http://dtrace.org/blogs/bmc/2018/12/16/a-eula-in-foss-clothing/](http://dtrace.org/blogs/bmc/2018/12/16/a-eula-in-foss-clothing/ "A Eula in FOSS clothing")
1) [https://medium.com/@adamhjk/goodbye-open-core-good-riddance-to-bad-rubbish-ae3355316494](https://medium.com/@adamhjk/goodbye-open-core-good-riddance-to-bad-rubbish-ae3355316494 "Adam Jacobs article on open core")
    i) [https://sfosc.org/docs/business-models/free-software-product/](https://sfosc.org/docs/business-models/free-software-product/ "Free software product")

Answer these questions with a few short sentences:

* What is Bryan Cantrill's initial main point in the first article?
* Bryan Cantrill feels that open source has now reached somewhat of a midlife crises such that service providers even like cloud have a parastic relation with the open source . Open source business models are tough selling and Saas is a natural choice . Bryan claims that many of the companies are contradicting themselves by trying to license their way still claiming themselve opensource. By giving license to the community they are infact saying that licenses have assertive rights which the copyright holder does not have.
* Do you agree with him, why or why not?
* Bryan is right when he says open source models are tough ,truly business should revolve around the software and the software should cater to the business need.
* What is Jay Kreps response/contention in the second article?
* Jay Kreps corrects few of the view points of Bryan's article.He corrects him by mentioning that companies MongoDB and confluent are not looking to  license IP to public cloud providers.He feels that having a community license is really that bad as you get to fork th source code. Confluent still follows a liberal way to give away at the same time sustaining itself.He also feels that the meme opensource companies are failing and sites example of MongoDB.He feels that there should be a middle ground where companies who use licenses work with the community.He does agree that companies build around the ecosystem have thier responsiblity towards the ecosystem and not just think about thier profit motive.
* Do you agree with him, why or why not?
* Community license ,support ,certifications are a way for open source companies to earn a buck.It makes a good business model and at the same time promote for better quality of the software by means of better community ,better workforce and support.
* What is the main point of Bryan Cantrill's rejoinder in the third article?
* Bryan points out the fact that when you use the term license you already do not own the software ,even if you modify you donot own licenses. Licenses state that we do not own the software that we paid for .This was for Jay's analogy of the digitalbooks and confluent community license.
* Do you agree with him, why or why not?
* Bryan's views seem alarming .License can be a pervert way for some of the companies to claim open source ,but licensing for community version can gaurantee quality and keep the company viable in the market.
* What is Adam Jacob's opinion on running a company with an opensource product?
* Adam Jacob feels that open core is rubbish and a company running with an opensource software should be give its code out 100 % to the community . it should be a free software. The company should try to be the best possible producers of the enterprise version which solves real problem . The community can benefit by using its version and modify it for themselves or if they want to compete for a profit they can try to build a better product.Its a win win for everybody.
* What is the solution in your opinion?
* In my opinion both proprietry and open source companies are trying to earn profits and each have thier own policy. If open source companies can truly be open source and reputed like chef and still be successful ,opensource is great. But the companies which still want to be open core and turn profits are not completely at fault to think about thier gains so I would not call open core complete rubbish.

## Activity 3

* Sign up for a GitHub ID at [GitHub.com](https://github.com "GitHub website")
  * If you have one already no need to sign up for another one
* See Appendix-E assignment for installing Git on your computer
