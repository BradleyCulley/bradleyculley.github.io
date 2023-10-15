## New Project: AI-Powered Market Research 

---

#### A few months ago, I posted about a project for Mitchell Henderson, the CEO of Clear Seas Research, a market research company in Troy Michigan: tinyurl.com/664kraza](https://tinyurl.com/664kraza).

Here's what that project looks like:
![ENRCostData.com](https://bradleyculley.github.io/images/ENR_Cost_Data.png)

That was actually the *second* project I worked on for Mitchell. Today I’m posting about the first! Technical details are at the end, if you're looking for those.

---

### What’s the product?

It’s an AI-first platform for understanding market research data.

Mitchell and I worked on it for a year and half. March 2022 to August 2023.

The team has also grown during that time. Mitchell’s brought on four more software engineers over the past 6 months, through the TopTal contracting service. I performed the interviews and served as their engineering manager. All four are superb engineers. They've been awesome to work with.

This is one of the "dashboards" in the platform: dashboard.clearseas.ai/waterHeater](https://dashboard.clearseas.ai/waterHeater)

![Water heater dashboard.png](https://bradleyculley.github.io/images/Water_heater_dashboard.png)

That dashboard is all about water heaters. The intended users are employees of water heater manufacturing companies.

The whole platform has about 90 different "dashboard types". To give economic scale, a given dashboard sells for about $100,000/year, sometimes bundled with a separate research report.

The core of the platform is its plots. For example, let’s say you wanted to know which types of water heaters are most popular, and to see the trend over the past three years. The types are "tank" (has a water tank), "tankless/instantaneous" (no water tank), and so on. In market research terminology, this is called "product category involvement".

Here’s a chart with that breakdown: dashboard.clearseas.ai/waterHeater/plot/productCategoryInvolvement](https://dashboard.clearseas.ai/waterHeater/plot/productCategoryInvolvement)

![Water heater product category involvement.png](https://bradleyculley.github.io/images/Water_heater_product_category_involvement.png)

A "killer feature" is side-by-side chart comparisons, including with different filters on the left and right.

For example, what’s the product category involvement for small companies versus large companies?

In other words, does the choice of what kind of water heater gets installed depend on whether it’s installed by a small plumbing company or a large plumbing
company? Do small companies hate dealing with tankless for some reason?

Here's your answer: tinyurl.com/mrfszzv4](https://tinyurl.com/mrfszzv4)

![Product_Category_Involvement_Plot_Comparison.png](https://bradleyculley.github.io/images/Product_Category_Involvement_Plot_Comparison.png)

Small plumbing companies keep it simple. They deal less in indirect tank heaters.

An indirect tank water heater heats the water using heat from the home’s furnace, employing a heat exchanger. Sounds complicated. Not the best fit for a 3-person business.

That’s a real actionable takeaway for a company like Trane Technologies, which manufactures water heaters. Marketing, customer service, product lineup, and more can be adjusted accordingly. Trane can focus their marketing copy in their leading "sales channel" (how they sell things) for a given type of water heater.

To break it down again:<br/>
> 1. Small companies buy tank water heaters over other kinds of water heaters<br/>
> 2. Small companies buy tank water heaters through retail chain X (e.g. Lowes)<br/>
> 3. In what they sell through Lowes, Trane may want to beef up on tank water heater product lineups that work well for small plumbing companies<br/>
> 4. Trane may want to slim down their non-tank offerings through Lowes. For example, fewer types of indirect tank heaters. __*Focus on the tanks.*__<br/>

Parenthetical remark: saw this Trane van in Illinois this past winter. Had to take a photo!

![Trane_van.jpeg](https://bradleyculley.github.io/images/Trane_van.jpeg)

<br>

But wait, this company size chart comparison doesn't tell us the leading sales channel by type of water heater, right?<br>

Correct: the chart doesn’t tell us that.

However, there’s a whole other section with 34 different charts about tank water heaters.<br>

You can see the section and the chart names in the accordion menu on the left.<br>

![Tank_water_heaters_left_nav_item.png](https://bradleyculley.github.io/images/Tank_water_heaters_left_nav_item.png)

Those charts, however, are what we call "premium". You need a paid license to see them. If you click into one, you’re directed to the page explaining how to purchase the premium version of the dashboard.

![Water heater about brand page.png](https://bradleyculley.github.io/images/Water_heater_about_brand_page.png)

In particular, there’s a chart with the exact data we want! It answers the question: where do small companies buy tank water heaters?

Here’s the link to the chart: dashboard.clearseas.ai/waterHeater/plot/tankWaterHeatersPurchaseChannels?companySizes=companySize1,companySize2](https://dashboard.clearseas.ai/waterHeater/plot/tankWaterHeatersPurchaseChannels?companySizes=companySize1,companySize2)

You can’t access that chart unless you buy the dashboard, but I’ll give you the answer: *Amazon and Home Depot*.

Long story short: __Trane may want the tank water heaters it sells through Amazon and Home Depot to be the kinds that small plumbing companies prefer installing.__

Trane may also want to dial back the non-tank options.

Companies like Trane purchase these dashboards to get these insights.

Trane, the market leader in hot water heater manufacturing, does $16.8B/year in revenue. Purchasing a dashboard like this is a great investment.

Furthermore, this dashboard represents a step-change in market research technology. Nobody else has something like this: charts for custom data sources, emailable deeplinks to browser-based charts, filters, side-by-side chart comparisons, and so on.

Research reports are traditionally delivered as a single file. For example, a PDF. Each page of the PDF has a chart and some commentary. Here’s the problem: in a PDF, you can’t "slice and dice" the data via filters. Nor can you easily do side-by-side comparisons.

On this platform, one does the "slicing-and-dicing" of the data via filter checkboxes like this:

![Chart_filters](https://bradleyculley.github.io/images/Chart_filters.png)

You can select any combination of those checkboxes, and the chart updates in real-time.

At one point, we calculated the number of combinations of charts and filters in a typical "dashboard type". It’s over 1 billion. Can’t a have a billion-page PDF.

There are similar features in some proprietary tools like Tableau. But, they’re not browser-based. They also can’t easily use a client’s custom-format data. Mitchell can either do the research study himself ("end-to-end"), or, if the client already did the study, quickly and easily build a dashboard using data provided by the client. He can build a dashboard with your data regardless of where it came from: SurveyMonkey, Forsta, Qualtrics, etc.

To put it more candidly, clients love this platform.

As mentioned, Mitchell’s company, Clear Seas Research, does "end-to-end" market research. For example, they have a verified panel of people who work as professional hot water heater installers.
You can see some of those people in the video thumbnails here (they agreed to have their videos shared, by the way): dashboard.clearseas.ai/waterHeater/video/surveyVideos](https://dashboard.clearseas.ai/waterHeater/video/surveyVideos)

![Multiple survey video cards.png](https://bradleyculley.github.io/images/Multiple_survey_video_cards.png)

The report data, therefore, is "fully-permissioned" and "first-party". "First-party" is key. Some research organizations get their data from the glorified equivalent of a Google search. Some even just make stuff up.

Here’s another "dashboard type", this time for the roofing industry: dashboard.clearseas.ai/RCSOI](https://dashboard.clearseas.ai/RCSOI)

![RCSOI dashboard.png](https://bradleyculley.github.io/images/RCSOI_dashboard.png)

Restoration and remediation: dashboard.clearseas.ai/PREMIUMRRSOI](https://dashboard.clearseas.ai/PREMIUMRRSOI)

![PREMIUMRRSOI dashboard.png](https://bradleyculley.github.io/images/PREMIUMRRSOI_dashboard.png)

Capital spending on assembly manufacturing: dashboard.clearseas.ai/ASMCS](https://dashboard.clearseas.ai/ASMCS)

![ASMCS dashboard.png](https://bradleyculley.github.io/images/ASMCS_dashboard.png)

And so on.

### The domain name is .ai…so what’s the AI part?

Three things:
1. Harken back to our example above: which size companies install which types of water heaters.<br>

    Notice the "AI Analytics" tab right above the plots? Here’s a deeplink: tinyurl.com/mrfszzv4](https://tinyurl.com/mrfszzv4)<br>

    In that tab, you can chat with the data via a large language model (LLM) that has as context all the data, and all the filters, in both charts. You get answers in natural language.<br><br>

    ![AI_Analytics.png](https://bradleyculley.github.io/images/AI_Analytics.png)<br><br>

    There are a few preset prompts to get you started. For example, "Generate Executive Insights", which prompts "Give me three bullet points, one sentence each, that summarize the main insights".<br>

    An example of some of what I got when I pressed the "Generate Executive Insights" button:<br>
    > 1.	For companies with a size of 1 or 2-5, the installation, replacement, and servicing of tank water heaters consistently ranged from 90.65% to 93.27% between 2020 and 2021.2.
    > 2.	In contrast, involvement with indirect tank water heaters remained relatively low with percentages ranging from 34.82% to 37.50% during the same period.

    Pretty relevant insights!

    This is powered by an OpenAI large language model API, interacted with via the Node.js backend. This feature has been a real favorite for users. People don’t want data; they want actionable insights.<br>

2. The platform has an AI-powered video insights section, which you can see here: dashboard.clearseas.ai/waterHeater/video/surveyVideos.](https://dashboard.clearseas.ai/waterHeater/video/surveyVideos)<br>

    When the videos and their transcripts are uploaded, the system runs sentiment analysis (NLP/NLU) on the transcripts, stores the results, and visualizes them next to the video in question. You can see the sentiment and thumbnail as a preview. You need a premium account to watch the video and see the un-blurred transcript.<br>

    Video upload page:

    ![Water heater video upload page.png](https://bradleyculley.github.io/images/Water_heater_video_upload_page.png)<br><br>

    Video cards on video insights page:

    ![Water heater video insights page.png](https://bradleyculley.github.io/images/Water_heater_video_insights_page.png)<br><br>

    There’s also a visualization of aggregate sentiment, among all respondents, per question: dashboard.clearseas.ai/waterHeater/video/surveyVideoInsights](https://dashboard.clearseas.ai/waterHeater/video/surveyVideoInsights)

    ![Water heater aggregate video insights.png](https://bradleyculley.github.io/images/Water_heater_aggregate_video_insights.png)

    The dropdown is populated with the questions that were asked in the survey. You can select a different question from the dropdown to see the average sentiment for answers to that question among all respondents.<br> 

    Potential future work that's been discussed for the video insights feature:<br>
    >    •	Batch upload (currently serial)<br><br>
    •	Automatic generation of the video transcripts based on the audio tracks (probably using Amazon Polly)<br><br>
    •	Classification of emotion (positive, negative, mixed, neutral) directly from video frame images (probably using Amazon Rekognition). Separately, classification of emotion from the audio (probably using Amazon Transcribe and Amazon Comprehend). The current system uses only the text. Going multimodal would make the classification more robust. Could experiment with tuning per-modality weighting to see what’s highest-fidelity to the truth.<br><br>
    •	Going end-to-end with video sourcing. Mitchell currently uses a platform called Voxpopme (voxpopme.com) to collect the videos. The respondents (e.g. plumbers) receive prompts and record their response videos through that platform.<br><br>
    • Mitchell and his staff then upload the videos into the relevant dashboard. Mitchell’s software engineering team could instead build the video surveying themselves! It would do exactly what they want, and it would connect right into the video analysis part that already exists.

    In other words, the vision is:
    > 1.	A contractor who installs water heaters would get a text message with a link to a paid survey<br><br>
    > 2.	They click the link, record the video, and get paid automatically<br><br>
    > 3.	The video is automatically uploaded to the relevant dashboard type (water heaters, roofing, manufacturing, etc.)<br><br>
    > 4.	The video is also automatically processed by the AI subsystems for voice-to-text and emotion classification<br><br>
    > 5.	The videos show up on the relevant dashboard in real time, complete with emotion classification and the other metadata (age of respondent, region of the US the respondent hails from, etc.)

   It was awesome to be able to design, build, and deploy all parts of the video management system:
   > • The infrastructure: AWS with Terraform<br><br>
   > • The CI/CD pipeline pieces: GitHub Actions<br><br>
   > • Video upload via an admin interface in the platform: full-stack React and Node<br><br>
   > • Video processing (FFmpeg), storage (S3 and RDS), sentiment analysis NLP/NLU, and frontend display of the videos and associated sentiment data.

    This was a great example of efficient and enjoyable product development. Mitchell and I talked through the feature, then I built it, demoing to Mitchell along the way. End-to-end delivery was about one month, in the fall of 2022.<br><br>

    But wait, we’re not done with videos yet!<br><br>

    Another feature I built in the fall of 2022 is the ability to generate a PowerPoint presentation from a list of videos.<br><br>

    When Mitchell brought this up to people, the response was "nuclear" (in a good way). The feature is a button on the video uploads page that says "Download as PowerPoint".

    ![Generate_PowerPoint_Button](https://bradleyculley.github.io/images/Generate_PowerPoint_Button.png)

    When the user clicks that button, the system generates a PowerPoint presentation with one video "card" per page:

    This feature is currently working in a Git feature branch (needs a few final tweaks)

    This is a next-level timesaver for market researchers. That’s particularly true if they can batch drag-and-drop videos straight to conversion into a PowerPoint generation.

    On the technical side, it was interesting working on PowerPoint generation in Node.js.

3.	Also built, and currently working in a Git feature branch: a custom clustering and summarization NLP/NLU model that categorizes answers people give to free-form text questions (the industry term is "open-ends").

    For example, let’s say 100 people were asked "can you tell us what is your preferred water heater brand and why?". The model takes in the 100 answers and generates a few "summarized" points that represent the key ideas across those 100 answers.

    This is a cool one: it’s a custom model that does sentiment-based clustering and per-cluster summarization.
    It’s LangChain-based and trained in AWS SageMaker. The output is visualized with a treemap-style chart.

    Here’s an example of a real result: ![Treemap_Chart_of_Open-Ends](https://bradleyculley.github.io/images/Treemap_Chart_of_Open-Ends.png)

What about the tech side?

#### One area that particularly stood out: interesting DNS work.

Per customer request, a few dashboard types, such as Assembly Capital Spending (`dashboard.assemblymag.com/ASMCS`), have custom domain names in which the root domain (`assemblymag.com`) is hosted by the 3rd-party customer. In other words, the domain isn't hosted in Mitchell's AWS account. 

We solved that using DNS delegation. In particular, pointing the external nameservers for only the `dashboard.` subdomain to our AWS Route 53 Hosted Zone’s NS records. Turns out you can have separate nameserver DNS records for the root domain and a subdomain. Didn’t know that before this project!

The final leg of DNS delegation to the ALB is just an `A` record.

So it’s:
> 1.	NS record DNS entry performed by the 3rd-party client hosting the core domain<br><br>
> 2.	Route 53 Hosted Zone for just the subdomain.<br><br>
You can create a hosted domain for whatever DNS value you want, even without having AWS as the domain registrar for the relevant domain. You get nameservers and all. If something delegates to those nameservers, you’re in business.
Here's an example: ![Route_53_hosted_zone.png](https://bradleyculley.github.io/images/Route_53_hosted_zone.png)<br><br>
> 3.	An A record pointing to the ALB’s FQDN DNS entry (as in the Terraform-generated ALB's FQDN partially visible in the screenshot above).

We solved the TLS problem using:
> 1.	ACM-generated, Route 53-validated certs (all via Terraform!). The cool thing about NS-based delegation is you can add validation records like `CNAME`s and `TXT`s to the Hosted Zone and they resolve just fine. ACM-managed certs mean auto-renewal/no-hassle.<br><br>
> 2.	A cool feature of ALBs called Server Name Indication (SNI). SNI lets you attach multiple TLS certs to a single ALB. AWS added SNI in 2017 ([tinyurl.com/5yf3pf5n](https://tinyurl.com/5yf3pf5n)). Our frontend ALB has 12 attached certs, 11 through `SNI`.

### Digital transformation:

When I joined, the project was in a relatively early stage of development. The codebase had at that point been built out entirely by a single software engineer. That person later took a job as a software engineer at Facebook/Meta, so Mitchell sought out a new engineer to work on the project. That's how Mitchell and I got connected.

That software engineer did a great job creating a capable MVP. It was, and still is, written with a Node.js backend and a React frontend. I used Spring Boot (Java) as the backend framework for the greenfield projects for Mitchell. There wasn’t reason to migrate the (fairly complex) Node.js backend to Spring Boot. TypeScript, however: yes.

Digital transformation of the infrastructure:
#### Before:
> •	Single on-premise server: no load balancing. (Small) downtime during deployments.<br><br>
> •	PM2 for Node process management<br><br>
> •	Deployment process: SSH onto machine -> `git pull` ->  stop Node process-> optionally `npm i` -> start Node process<br><br>
> •	No database<br><br>
> •	No user profiles/auth/ability to sign up/ability to sign in<br><br>
> •	No log collection/persistence/searchability<br><br>
> •	Manually-managed certs (provisioning, renewal, etc.)

#### After:
> •	Monorepo containing backend microservice (Node.js), frontend microservice (React), infrastructure-as-code (Terraform), end-to-end automated tests (Cypress), and pipeline-as-code (GitHub Actions).<br><br>
> •	Dockerized. One image per microservice, stored in private ECR repos. Image tagged with commit hash for traceability.<br><br>
> •	Deployed in AWS on ECS. Blue/green deployments, high-availability configuration, log collection from the containers into per-microservice-per-environment-segmented CloudWatch log groups. Serverless: low-hassle and impossible to SSH onto. Total of zero SSH key pairs for the app servers.<br><br>
> •	Data tier is PostgreSQL in RDS, with scheduled automated backups, data encrypted at rest, etc.<br><br>
> •	Pipeline has linting (including linting of the Terraform code!), automated testing, SonarQube, etc.<br><br>
> •	Snyk for security scanning: SAST, SCA, IaC (Terraform) scanning, and Docker image scanning<br><br>
> •	SonarQube Quality Gate gating in the pipeline. Failing the Quality Gate fails the build and blocks all deployments to all cloud environments.<br><br>
> •	End-to-end automated tests written in Cypress (in TypeScript!), including visual snapshot tests for charts. The end-to-end tests run in the pipeline on pushes to all branches, and they gate deployment from the main branch to any of the cloud environments.<br><br>
> •	A separate set of read-only e2e tests run on a cron, via GitHub Actions, against production, as a piece of the monitoring strategy for the platform<br><br>
> •	Separate staging and production environments. One infra codebase in the monorepo parameterized by environment. Environments implemented with Terraform workspace.<br><br>
> •	Uses GitHub Actions "environments" feature to restrict production deployments to only a subset of GitHub repo-permissioned users. Standing up a new environment is trivial: less than a day’s work.<br><br>
> •	Per-environment configuration such as service-specific URLs is provided via environment variables, per The Twelve-Factor App Methodology ([12factor.net](12factor.net)).

#### Digital transformation of the application code:
> •	Built out authentication and authorization, including the ability for one user to have premium access to more than one dashboard type, with different dates if needed. Solution leverages a multitenant architecture.<br><br>
> •	Built out a number of new chart types, including the heatmap chart type (e.g. dashboard.clearseas.ai/TSIC/plot/bestBrandsOverall](https://dashboard.clearseas.ai/TSIC/plot/bestBrandsOverall)):
![Heatmap_Chart](https://bradleyculley.github.io/images/Heatmap_Chart.png)<br><br>
and the USA choropleth chart type (e.g. dashboard.clearseas.ai/waterHeater/plot/regionUSAChoropleth](https://dashboard.clearseas.ai/waterHeater/plot/regionUSAChoropleth)):
![USA_Choropleth](https://bradleyculley.github.io/images/USA_Choropleth.png)<br><br>
> •	Videos insights feature discussed above<br><br>
> •	Moved to more standard use of React Router. Prior implementation often leveraged the querystring piece of the URL instead of the path piece of the URL.<br><br>
> •	Implemented Redux via Redux Toolkit (RTK) and moved relevant data into Redux. Auth data, chart data, currently-applied filters, etc.<br><br>
> •	Migration to TypeScript for both frontend and backend is currently in progress

But wait, there’s more!

Over the past few months, we also built out a third application, which I’ll post about here soon. That third application is very related to the product described in this post!

Thank you Mitchell for making all of this possible. It was an awesome experience. The epitome of true product development.

About a month ago, I took a new full-time corp-to-corp software engineering role through my consultancy. The role is with a large software company based in Massachusetts. More on that soon.

#### Thanks for reading! Leave a like or comment on LinkedIn if you enjoyed this post. Reach out to me on LinkedIn if you’d like to chat about anything related to this post: [linkedin.com/in/brad-culley-93651992](https://www.linkedin.com/in/brad-culley-93651992/).


