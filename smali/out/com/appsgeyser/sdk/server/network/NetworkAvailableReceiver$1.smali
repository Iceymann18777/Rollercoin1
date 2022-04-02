.class Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver$1;
.super Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;
.source "NetworkAvailableReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->createNetworkAvailableListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 60
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver$1;->this$0:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    iput-object p3, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public networkIsDown()V
    .registers 1

    return-void
.end method

.method public networkIsUp()V
    .registers 3

    .line 64
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->retryParsers(Landroid/content/Context;)V

    .line 65
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsgeyser/sdk/analytics/Analytics;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/analytics/Analytics;->isUsageAlreadySent()Z

    move-result v0

    if-nez v0, :cond_20

    .line 66
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsgeyser/sdk/analytics/Analytics;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/analytics/Analytics;->activityStarted(Landroid/content/Context;)V

    :cond_20
    return-void
.end method
