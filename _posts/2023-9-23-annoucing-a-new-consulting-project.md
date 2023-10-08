### A few months ago, I posted about a project for Mitchell Henderson, the CEO of Clear Seas Research, a market research company in Troy Michigan: [link](https://tinyurl.com/664kraza).

Here's what it looks like:
![ENRCostData.com](../images/ENRCostData.com.png)

That was actually the second project I worked on for Mitchell, and today I’m posting about the first! Technical details are at the end, if you're looking for those.

#### What’s the product?

It’s an AI-first platform for understanding market research data.

Mitchell and I worked on it for about a year and half. March 2022 to August 2023.

The team has also grown during that time. Mitchell’s brought on four more software engineers over the past 6 months, through the TopTal contracting service. I performed the interviews and served as their engineering manager. All four are superb engineers, who have been awesome to work with.

This is one of the dashboards in the platform: [link](https://dashboard.clearseas.ai/waterHeater).

![Water heater dashboard.png](..%2Fimages%2FWater%20heater%20dashboard.png)

That dashboard is all about water heaters. The intended users are employees of water heater manufacturing companies.

The whole platform has about 90 different “dashboard types”. To give economic scale, a given dashboard sells for about $100,000/year (sometimes bundled with a separate research report).

The core of the platform is its plots. For example, let’s say you wanted to know which types of water heaters are most popular, and to see the trend over the past three years. The types are “tank” (has a water tank), “tankless/instantaneous” (no water tank), and so on. In market research, this is called “product category involvement”.

Here’s a chart with that breakdown: https://dashboard.clearseas.ai/waterHeater/plot/productCategoryInvolvement.

![Water heater product category involvement.png](..%2Fimages%2FWater%20heater%20product%20category%20involvement.png)

A “killer feature” is side-by-side chart comparisons, including with different filters on the left and the right.

For example, what’s the product category involvement for small companies versus large companies?

In other words, does the choice of what kind of water heater gets installed depend on whether it’s installed by a small HVAC company or a large HVAC company? Do small companies hate dealing with tankless for some reason?

Here’s your answer: https://dashboard.clearseas.ai/waterHeater/plot/productCategoryInvolvement/productCategoryInvolvement?companySizes=companySize1,companySize2|companySize6.

![Water heater company sizes.png](..%2Fimages%2FWater%20heater%20company%20sizes.png)

Small HVAC companies keep it simple. They deal less in indirect tank heaters.

For reference, an indirect tank water heater heats the water using heat from the home’s furnace, employing a heat exchanger. Sounds complicated. Maybe not a great fit for a 3-person business.

That’s a real actionable takeaway for a company like Trane Technologies, which manufactures water heaters. Marketing, customer service, product lineup, and more can be adjusted accordingly. Trane can focus their marketing copy accordingly in their leading “sales channel” (how they sell things) for a given type of water heater.

To break it down again:<br/>
•	Small companies buy tank water heaters over other kinds of water heaters<br/>
•	Small companies buy tank water heaters through retail chain X (e.g. Lowes)<br/>
•	In what they sell through Lowes, Trane may want to beef up on tank water heater product lineups that work well for small mom-and-pop HVAC shops<br/>
•	Trane may want to slim down their non-tank offerings through Lowes. For example, fewer types of indirect tank heaters. Focus on the tanks.<br/>

Parenthetical remark: when visiting Bloomington, Illinois this past winter, I noticed a Trane company van on the street. Had to take a photo!

But wait, this company size chart comparison doesn’t tell us the leading sales channel by type of water heater, right?

![Water heater company sizes.png](..%2Fimages%2FWater%20heater%20company%20sizes.png)

Correct: the chart doesn’t tell us that…

Ok so I’m hitting the LinkedIn post limits here 🙂.

The whole post is on my (completely non-monetized, no signup, no popups) blog: [link](https://bradleyculley.github.io/2023/09/23/annoucing-a-new-consulting-project.html). Not trying to sell you anything, I’ve just hit the character limit here.

Anyway, back to the question above: “But wait, the company size chart comparison doesn’t tell us the leading sales channel by type of water heater, right?”.

The answer is yes: the company size chart comparison doesn’t tell us that. However, there’s a whole other section with 34 different charts about tank water heaters. You can see the section and the chart names in the accordion menu on the left.

<insert screenshot of that section of the left nav>

Those charts, however, are what we call "premium". You need a paid license to see them. If you click into one, you’re directed to the page explaining how to purchase the premium version of the dashboard.

![Water heater about brand page.png](..%2Fimages%2FWater%20heater%20about%20brand%20page.png)

In particular, there’s a chart with the exact data we want! It answers the question: where do small companies buy tank water heaters?

Here’s the link to the chart: https://dashboard.clearseas.ai/waterHeater/plot/tankWaterHeatersPurchaseChannels?companySizes=companySize1,companySize2.

You can’t access that chart unless you buy the dashboard, but I’ll give you the answer: Amazon and Home Depot.

Long story short: Trane may want the tank water heaters it sells through Amazon and Home Depot be the kinds that small HVAC shops prefer installing. Trane may also want to dial back the non-tank options.

Companies like Trane purchase these dashboards to get these insights.

Trane, the market leader in manufacturing hot water heaters, does $16.8B/year in revenue. Purchasing a dashboard like this is a great investment.

Furthermore, this dashboard represents a step-change in market research technology. Nobody else has a dashboard quite like this: charts for custom data sources, emailable deeplinks to browser-based charts, filters, side-by-side comparisons, and so on.

Research reports are traditionally delivered as a single file. For example, a PDF. Each page of the PDF has a chart and some commentary. Here’s the problem: in a PDF, you can’t “slice and dice” the data via filters. Nor can you easily do side-by-side comparisons.

At one point, we calculated the number of different combinations of charts and filters in a typical “dashboard type” on this platform: it’s over 1 billion. Can’t a have a billion-page PDF.

There are similar features in some proprietary tools like Tableau. But they’re not browser-based, and they can’t easily use a client’s custom-format data. Mitchell can either do the research study himself (“end-to-end”), or, if the client already did the study, quickly and easily build a dashboard using data provided by the client. He can build a dashboard with your data regardless of where it came from: SurveyMonkey, Forsta, Qualtrics, etc.

To put it more candidly, clients love the platform.

As mentioned, Mitchell’s company, Clear Seas Research, does “end-to-end” market research. For example, they have a verified panel of people who work as professional hot water heater installers. You can see some of those people here: https://dashboard.clearseas.ai/waterHeater/video/surveyVideos.

![Multiple survey video cards.png](..%2Fimages%2FMultiple%20survey%20video%20cards.png)

The report data, therefore, is “fully-permissioned” and “first-party”. “First-party” is key. Some research organizations get their data from the glorified equivalent of a Google search. Some even just make stuff up.

Here’s another “dashboard type”, this time for the roofing industry: https://dashboard.clearseas.ai/RCSOI.

![RCSOI dashboard.png](..%2Fimages%2FRCSOI%20dashboard.png)

Restoration and remediation: https://dashboard.clearseas.ai/PREMIUMRRSOI.

![PREMIUMRRSOI dashboard.png](..%2Fimages%2FPREMIUMRRSOI%20dashboard.png)

Capital spending on assembly manufacturing: https://dashboard.clearseas.ai/ASMCS.

![ASMCS dashboard.png](..%2Fimages%2FASMCS%20dashboard.png)

And so on.

### The domain name is .ai…so what’s the AI part?

Three things:
1.	Harken back to our example above: which size companies install which types of water heaters.

Notice the “AI Analytics” tab right above the plots? Here’s a deeplink: https://dashboard.clearseas.ai/waterHeater/plot/productCategoryInvolvement/productCategoryInvolvement?companySizes=companySize1,companySize2|companySize6

In that tab, you can chat with the data via a large language model (LLM) that has as context all the data, and all the filters, in both charts. You get answers in natural language.

<insert screenshot here>

There are a few preset prompts to get you started. For example, “Generate Executive Insights”, which prompts “Give me three bullet points, one sentence each, that summarize the main insights”.

An example of what I got when I pressed the “Generate Executive Insights” button:

“
1.	For companies with a size of 1 or 2-5, the installation, replacement, and servicing of tank water heaters consistently ranged from 90.65% to 93.27% between 2020 and 2021.2.
2.	In contrast, involvement with indirect tank water heaters remained relatively low with percentages ranging from 34.82% to 37.50% during the same period.
      “

Pretty relevant insights!

This is powered by an OpenAI large language model API. This feature has been a real favorite for users. People don’t want data; they want actionable insights.

2.	The platform has a video insights section, which you can see here: https://dashboard.clearseas.ai/waterHeater/video/surveyVideos.

When the videos and their transcripts are uploaded, the system runs sentiment analysis (NLP/NLU) on the transcripts, stores the results, and visualizes them next to the video in question. You can see the sentiment and thumbnail as a preview. You need a premium account to watch the video and see the unblurred transcript.

Video upload page:

![Water heater video upload page.png](..%2Fimages%2FWater%20heater%20video%20upload%20page.png)

Video cards on video insights page:

![Water heater video insights page.png](..%2Fimages%2FWater%20heater%20video%20insights%20page.png)

There’s also a visualization of aggregate sentiment, among all respondents, per question. 

![Water heater aggregate video insights.png](..%2Fimages%2FWater%20heater%20aggregate%20video%20insights.png)

Here an example for the questions that the water heater contractors were asked: https://dashboard.clearseas.ai/waterHeater/video/surveyVideoInsights.

Potential future work that's been discussed for the video insights feature:
•	Batch upload (currently serial)
•	Automatic generation of the video transcripts based on the audio tracks (probably using Amazon Polly)
•	Classification of emotion (positive, negative, mixed, neutral) directly from video frame images. Separately, classification of emotion from the audio. The current system uses only the text. Going multimodal would make the classification more robust. Could experiment with tuning per-modality weighting to see what’s highest-fidelity to the truth.
•	Going end-to-end with video sourcing. Mitchell currently uses a platform called Voxpopme (voxpopme.com) to collect the videos. The respondents (e.g. hot water heater installers) receive prompts and record their response videos through that platform.
Mitchell and his staff then upload the videos into the relevant dashboard. Mitchell’s software engineering team could instead build the video surveying themselves! It would do exactly what they want, and it would connect right into the video analysis part that already exists.

In other words, the vision is:
1.	A contractor who installs water heaters would get a text message with a link to a paid survey
2.	They click the link, record the video, and get paid automatically
3.	The video is automatically uploaded to the relevant dashboard type (water heaters, roofing, manufacturing, etc.)
4.	The video is also automatically processed by the AI subsystems for voice-to-text and emotion classification
5.	The videos show up on the relevant dashboard in real time, complete with emotion classification and the other metadata (age of respondent, region of the US the respondent hails from, etc.)

I was fortunate to be able to design, build, and deploy all parts of this video management system, including the infrastructure (AWS with Terraform). Video upload via an admin interface in the platform, video processing (FFmpeg), storage (S3 and RDS), sentiment analysis NLP/NLU, and frontend display of the videos and associated sentiment data.

This was a great example of efficient and enjoyable product development. Mitchell and I talked through the feature, then I built it, demoing to Mitchell along the way. End-to-end delivery was about one month, in the fall of 2022.

But wait, we’re not done with videos yet! Another feature I built in the fall of 2022 is the ability to generate a PowerPoint presentation from a list of videos. When Mitchell brought this up to people, the response was “nuclear” (in a good way). The feature is a button on the video uploads page that says “Generate PowerPoint”.

<picture of the generate PowerPoint button>

When the user clicks that button, the system generates a PowerPoint presentation with one video “card” per page, like this:

<screenshot of the generated PowerPoint>

This feature is currently working in a Git feature branch (needs a few final tweaks)

This is, apparently, a next-level timesaver for market researchers. That’s particularly true if they can batch drag and drop videos straight to conversion to a PowerPoint generation.

On the technical side, it was interesting working on PowerPoint generation in Node.js.

3.	Also built, and currently working in a Git feature branch: a custom clustering and summarization NLP/NLU model that categorizes answers people give to free-form text questions (the industry term is “open-ends”).

For example, let’s say 100 people were asked “can you tell us what is your preferred water heater brand and why?”. The model takes in the 100 answers and generates a few “summarized” points that represent the key ideas across those 100 answers.

This is a cool one: it’s a custom model that does sentiment-based clustering and per-cluster summarization. It’s LangChain-based and trained in AWS SageMaker. The output is visualized with a treemap chart.

Here’s an example of a real result:
<Put chart here>


Thank you Mitchell for making all of this possible. It was an awesome experience. The epitome of true product development.

About a month ago, I took a new full-time corp-to-corp software engineering role through my consultancy. The role is with a large education software company based in Massachusetts. More on that soon.

Mitchell also graciously hosted me for a visit to Michigan earlier this year. I stayed in the guest house at his home, visited the Clear Seas Research office in Troy, and saw a lot of great sights around the Detroit area. Favorites included the Fisher Building and the Detroit Institute of Arts.

These are a few photos of The Fisher building: https://www.fisherbuilding.city/gallery. Simply stunning.

Likewise, the Detroit Institute of Arts is amazing. At every turn was another Monet, Matisse, or Gauguin. Unbelievable collection.

Also put faces to voices for people at Mitchell’s company!


What about the tech side?

Interesting DNS work:

Per customer request, a few dashboard types, such as Assembly Capital Spending (dashboard.assemblymag.com/ASMCS), have custom domain names in which the root domain (assemblymag.com) is hosted by the 3rd-party customer.

We solved that using DNS delegation. In particular, pointing the external nameservers for only the `dashboard.` subdomain to our AWS Route 53 Hosted Zone’s NS records. Turns out you can have separate nameserver DNS records for the root domain and a subdomain. Didn’t know before this project!

The final leg of DNS delegation to the ALB is just an A record.

So it’s:
1.	NS record DNS entry performed by the 3rd party client hosting the core domain
2.	Route 53 Hosted Zone for just the subdomain.

Fact: you can create a hosted domain for whatever DNS value you want, even without having AWS as the domain registrar for the relevant domain. You get nameservers and all. If something delegates to those nameservers, you’re in business.
3.	An A record pointing to the ALB’s DNS entry.

We solved the TLS problem using:
1.	ACM-generated, Route 53-validated certs (via Terraform!). The cool thing about NS-based delegation is you can add validation records like CNAMEs and TXTs to the Hosted Zone and they resolve just fine. ACM-managed certs mean auto-renewal/no-hassle.
2.	A cool feature of ALBs called Server Name Indication (SNI). SNI lets you attach multiple TLS certs to a single ALB. AWS added SNI in 2017 (https://tinyurl.com/5yf3pf5n). Our frontend ALB has 12 attached certs, 11 through SNI 🙂.


Digital transformation:

When I joined, the project was in its early stages. The codebase had at that point been built out entirely by a single developer. That developer then moved on to take a job as a software engineer at Facebook/Meta.

He did a great job creating a capable MVP. It was, and still is, written with a Node.js backend and a React frontend. I used Spring Boot (Java) as the backend framework for the greenfield projects I built for Mitchell, but there wasn’t reason to migrate the (fairly complex) Node.js backend to Spring Boot. TypeScript, however: yes.

Digital transformation of the infrastructure:
Before:
•	Single on-premise server: no load balancing. (Small) downtime during deployments.
•	PM2 for Node process management
•	Deployment process: SSH onto machine -> git pull ->  stop Node process-> optionally “npm i” -> start Node process
•	No database
•	No log collection/persistence/searchability
•	Manually managed DNS (manual renewal, etc.)

After:
•	Monorepo containing backend microservice, frontend microservice (React), infrastructure-as-code (Terraform), end-to-end automated tests, and pipeline-as-code (GitHub Actions).
•	Dockerized. One image per microservice, stored in private ECR repos. Image tagged with commit hash for traceability.
•	Deployed in AWS on ECS. Blue/green deployment, high-availability configuration, log collection from the containers into per-microservice-per-environment-segmented CloudWatch log groups. Serverless: low-hassle and impossible to SSH onto. Total of zero SSH key pairs.
•	Data tier is PostgreSQL in RDS, with scheduled automated backups, data encrypted at rest, etc.
•	Pipeline has linting (including linting of the Terraform code!), automated testing, SonarQube, etc.
•	Snyk for security scanning: SAST, SCA, IaC (Terraform) scanning, and Docker image scanning
•	SonarQube, including quality gate gating in the pipeline. Failing the quality gate fails the build and blocks all deployments to all cloud environments.
•	Playwright-based (TypeScript!) e2e automated tests, including visual snapshot tests for the charts. The e2es run in the pipeline on pushes to all branches, and gate deployment from the main branch to any of the cloud environments.
•	A separate set of read-only e2e tests run on a cron, via GitHub Actions, against production, as a piece of the monitoring strategy for the platform
•	Separate staging and production environments, implemented via Terraform workspaces. One infra codebase in the monorepo parameterized by environment/Terraform workspace.

Uses GitHub Actions “environments” feature to restrict production deployments to only a subset of GitHub repo-permissioned users. Standing up a new environment is trivial: less than a day’s work.

Per-environment configuration such as service-specific URLs is provided via environment variables, per The Twelve-Factor App Methodology (12factor.net).

Digital transformation of the application code:

•	Built out authentication and authorization, including the ability for one user to have premium access to more than one dashboard type, with different dates if needed. Solution leverages a multitenant architecture.
•	Built out a number of new chart types, including the heatmap chart type (e.g. https://tinyurl.com/44t48dxn) and the USA choropleth chart type (e.g. https://tinyurl.com/36jbj3nk)
•	Videos insights feature discussed above
•	Moved to more standard use of React Router. Prior implementation often leveraged the querystring piece of the URL instead of the path piece of the URL.
•	Implemented Redux via Redux Toolkit and moved relevant data into Redux. Auth data, chart data, applied filters data, etc.
•	Migration to TypeScript for both frontend and backend is currently in progress

But wait, there’s more!

Over the past few months, we also built out a third application, which I’ll post about here soon. For that one, I served as the engineering manager. Another developer did the hands-on work and did an awesome job. The third application is very related to the dashboard platform described in this post, as it so happens!

Thanks for reading! Leave a like or comment if you enjoyed this post!
