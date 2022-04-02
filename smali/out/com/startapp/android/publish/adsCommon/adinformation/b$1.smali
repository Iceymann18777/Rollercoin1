.class Lcom/startapp/android/publish/adsCommon/adinformation/b$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adsCommon/adinformation/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adsCommon/adinformation/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/adinformation/b;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$1;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$1;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->d()V

    .line 91
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$1;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    iget-object v0, v0, Lcom/startapp/android/publish/adsCommon/adinformation/b;->e:Lcom/startapp/android/publish/common/metaData/h;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$1;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    iget-object v1, v1, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/common/metaData/h;->a(Landroid/content/Context;Z)V

    .line 92
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$1;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    iget-object v0, v0, Lcom/startapp/android/publish/adsCommon/adinformation/b;->d:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$1;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    iget-object v1, v1, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;->a(Landroid/content/Context;Z)V

    .line 94
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$1;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a(Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_3a

    :catch_23
    move-exception v0

    .line 96
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$1;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    iget-object v1, v1, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a:Landroid/content/Context;

    new-instance v2, Lcom/startapp/android/publish/adsCommon/f/e;

    sget-object v3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AdInformationObject.acceptRunnable failed"

    invoke-direct {v2, v3, v4, v0}, Lcom/startapp/android/publish/adsCommon/f/e;-><init>(Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 96
    invoke-static {v1, v2, v0}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/e;Ljava/lang/String;)V

    :goto_3a
    return-void
.end method
