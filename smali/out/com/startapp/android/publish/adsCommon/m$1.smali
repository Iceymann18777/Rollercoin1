.class Lcom/startapp/android/publish/adsCommon/m$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/common/metaData/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/m;->j(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/startapp/android/publish/adsCommon/m;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/m;Landroid/content/Context;)V
    .registers 3

    .line 228
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/m$1;->b:Lcom/startapp/android/publish/adsCommon/m;

    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/m$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 232
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->isUserAgentEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 233
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getUserAgentDelayInSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 234
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/m$1;->b:Lcom/startapp/android/publish/adsCommon/m;

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/m$1;->a:Landroid/content/Context;

    invoke-static {v2, v3, v0, v1}, Lcom/startapp/android/publish/adsCommon/m;->a(Lcom/startapp/android/publish/adsCommon/m;Landroid/content/Context;J)V

    .line 237
    :cond_1f
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/Utils/b;->c(Landroid/content/Context;)V

    .line 238
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/Utils/b;->d(Landroid/content/Context;)V

    .line 242
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m$1;->b:Lcom/startapp/android/publish/adsCommon/m;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/m$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/m;->e(Landroid/content/Context;)V

    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_6e

    .line 245
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getTrueNetEnabled()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 246
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m$1;->b:Lcom/startapp/android/publish/adsCommon/m;

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/m;->a(Lcom/startapp/android/publish/adsCommon/m;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5a

    .line 247
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m$1;->b:Lcom/startapp/android/publish/adsCommon/m;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/m;->a(Lcom/startapp/android/publish/adsCommon/m;Z)Z

    .line 248
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m$1;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "shared_prefs_appId"

    invoke-static {v0, v3, v2}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/truenet/android/TrueNetSDK;->with(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    :cond_5a
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/truenet/android/TrueNetSDK;->enable(Landroid/content/Context;Z)V

    goto :goto_6e

    .line 251
    :cond_60
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m$1;->b:Lcom/startapp/android/publish/adsCommon/m;

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/m;->a(Lcom/startapp/android/publish/adsCommon/m;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 252
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m$1;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/truenet/android/TrueNetSDK;->enable(Landroid/content/Context;Z)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public b()V
    .registers 5

    const-string v0, "StartAppSDKInternal"

    const/4 v1, 0x3

    const-string v2, "setPeriodicAlarms: onFailedLoadingMeta"

    .line 259
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->isUserAgentEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 263
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 264
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/m$1;->b:Lcom/startapp/android/publish/adsCommon/m;

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/m$1;->a:Landroid/content/Context;

    invoke-static {v2, v3, v0, v1}, Lcom/startapp/android/publish/adsCommon/m;->a(Lcom/startapp/android/publish/adsCommon/m;Landroid/content/Context;J)V

    :cond_21
    return-void
.end method
