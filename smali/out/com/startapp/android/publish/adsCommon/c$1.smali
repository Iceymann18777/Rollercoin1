.class final Lcom/startapp/android/publish/adsCommon/c$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/startapp/android/publish/adsCommon/d/b;


# direct methods
.method constructor <init>(ZLandroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;)V
    .registers 5

    .line 274
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/c$1;->a:Z

    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/c$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/startapp/android/publish/adsCommon/c$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/startapp/android/publish/adsCommon/c$1;->d:Lcom/startapp/android/publish/adsCommon/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 278
    :try_start_0
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/c$1;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 279
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$1;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/c$1;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/c$1;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/startapp/android/publish/adsCommon/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/startapp/common/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/c$1;->d:Lcom/startapp/android/publish/adsCommon/d/b;

    invoke-virtual {v3}, Lcom/startapp/android/publish/adsCommon/d/b;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/startapp/android/publish/adsCommon/k/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    goto :goto_66

    .line 281
    :cond_2f
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$1;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/c$1;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/c$1;->d:Lcom/startapp/android/publish/adsCommon/d/b;

    invoke-virtual {v3}, Lcom/startapp/android/publish/adsCommon/d/b;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/startapp/android/publish/adsCommon/k/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_4b
    .catch Lcom/startapp/common/e; {:try_start_0 .. :try_end_4b} :catch_4c

    goto :goto_66

    :catch_4c
    move-exception v0

    .line 284
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c$1;->b:Landroid/content/Context;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Lcom/startapp/common/e;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/startapp/android/publish/adsCommon/c$1;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/startapp/android/publish/adsCommon/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Util.sendTrackingMessage - Error sending tracking message"

    invoke-static {v1, v2, v5, v3, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    const-string v2, "Error sending tracking message"

    .line 285
    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_66
    return-void
.end method
