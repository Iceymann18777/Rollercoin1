.class final Lcom/startapp/android/publish/adsCommon/c$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/c;->b(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 298
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/c$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/c$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c$2;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/k/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_8
    .catch Lcom/startapp/common/e; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_1f

    :catch_9
    move-exception v0

    .line 304
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c$2;->a:Landroid/content/Context;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Lcom/startapp/common/e;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Util.sendTrackingMessage - Error sending tracking message"

    const-string v5, ""

    invoke-static {v1, v2, v4, v3, v5}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    const-string v2, "Error sending tracking message"

    .line 305
    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_1f
    return-void
.end method
