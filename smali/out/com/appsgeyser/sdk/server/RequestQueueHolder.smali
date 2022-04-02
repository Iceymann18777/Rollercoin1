.class public Lcom/appsgeyser/sdk/server/RequestQueueHolder;
.super Ljava/lang/Object;
.source "RequestQueueHolder.java"


# static fields
.field private static deferredUrls:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/appsgeyser/sdk/server/RequestQueueHolder; = null

.field private static volatile ready:Z = false


# instance fields
.field private queue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->queue:Lcom/android/volley/RequestQueue;

    .line 18
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->queue:Lcom/android/volley/RequestQueue;

    const/4 p1, 0x1

    .line 19
    sput-boolean p1, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->ready:Z

    return-void
.end method

.method static addUrl(Ljava/lang/String;)V
    .registers 4

    .line 30
    sget-object v0, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->instance:Lcom/appsgeyser/sdk/server/RequestQueueHolder;

    if-nez v0, :cond_15

    .line 31
    sget-object v0, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->deferredUrls:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->deferredUrls:Ljava/util/ArrayList;

    .line 34
    :cond_f
    sget-object v0, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->deferredUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 36
    :cond_15
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->getQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :goto_22
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/RequestQueueHolder;
    .registers 2

    .line 23
    sget-object v0, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->instance:Lcom/appsgeyser/sdk/server/RequestQueueHolder;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Lcom/appsgeyser/sdk/server/RequestQueueHolder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/server/RequestQueueHolder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->instance:Lcom/appsgeyser/sdk/server/RequestQueueHolder;

    .line 26
    :cond_b
    sget-object p0, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->instance:Lcom/appsgeyser/sdk/server/RequestQueueHolder;

    return-object p0
.end method


# virtual methods
.method public getQueue()Lcom/android/volley/RequestQueue;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->queue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method
