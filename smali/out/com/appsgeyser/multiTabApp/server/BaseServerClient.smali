.class public Lcom/appsgeyser/multiTabApp/server/BaseServerClient;
.super Ljava/lang/Object;
.source "BaseServerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/server/BaseServerClient$HandleRedirectRetryPolicy;,
        Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;
    }
.end annotation


# instance fields
.field protected _activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field protected _config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

.field protected _context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->_activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    .line 50
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->_context:Landroid/content/Context;

    .line 51
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    return-void
.end method


# virtual methods
.method public sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;)V
    .registers 7

    const/4 v0, 0x1

    .line 62
    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 63
    new-instance v0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$1;-><init>(Lcom/appsgeyser/multiTabApp/server/BaseServerClient;Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    new-instance p3, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$2;

    invoke-direct {p3, p0}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$2;-><init>(Lcom/appsgeyser/multiTabApp/server/BaseServerClient;)V

    .line 80
    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    invoke-direct {v1, p1, v0, p3}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 81
    new-instance p1, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$HandleRedirectRetryPolicy;

    const/16 p3, 0x2710

    const/4 v0, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, p0, p3, v0, v2}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$HandleRedirectRetryPolicy;-><init>(Lcom/appsgeyser/multiTabApp/server/BaseServerClient;IIF)V

    invoke-virtual {v1, p1}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 82
    invoke-virtual {v1, p2}, Lcom/android/volley/toolbox/StringRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 84
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->_context:Landroid/content/Context;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;->getQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    .line 85
    invoke-virtual {p1, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method
