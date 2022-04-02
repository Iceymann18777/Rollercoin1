.class public abstract Lcom/mopub/mobileads/BaseBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseBroadcastReceiver.java"


# instance fields
.field private final mBroadcastIdentifier:J

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->mBroadcastIdentifier:J

    return-void
.end method

.method public static broadcastAction(Landroid/content/Context;JLjava/lang/String;)V
    .registers 5

    const-string v0, "context cannot be null"

    .line 28
    invoke-static {p0, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action cannot be null"

    .line 29
    invoke-static {p3, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "broadcastIdentifier"

    .line 31
    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public abstract getIntentFilter()Landroid/content/IntentFilter;
.end method

.method public register(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V
    .registers 4

    .line 39
    iput-object p2, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    .line 41
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 40
    invoke-virtual {p2, p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public shouldConsumeBroadcast(Landroid/content/Intent;)Z
    .registers 6

    const-string v0, "intent cannot be null"

    .line 58
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastIdentifier"

    const-wide/16 v1, -0x1

    .line 59
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 60
    iget-wide v2, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->mBroadcastIdentifier:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method public unregister(Landroid/content/BroadcastReceiver;)V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    .line 46
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->mContext:Landroid/content/Context;

    :cond_10
    return-void
.end method
