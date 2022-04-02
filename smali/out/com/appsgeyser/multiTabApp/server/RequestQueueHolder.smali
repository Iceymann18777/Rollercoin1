.class public Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;
.super Ljava/lang/Object;
.source "RequestQueueHolder.java"


# static fields
.field private static volatile _ready:Z = false

.field private static deferredUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;


# instance fields
.field private _queue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;->_queue:Lcom/android/volley/RequestQueue;

    .line 44
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;->_queue:Lcom/android/volley/RequestQueue;

    const/4 p1, 0x1

    .line 45
    sput-boolean p1, Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;->_ready:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;
    .registers 2

    .line 18
    sget-object v0, Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;->instance:Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;->instance:Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;

    .line 22
    :cond_b
    sget-object p0, Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;->instance:Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;

    return-object p0
.end method


# virtual methods
.method public getQueue()Lcom/android/volley/RequestQueue;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;->_queue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method
