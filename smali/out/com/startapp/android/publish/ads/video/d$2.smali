.class Lcom/startapp/android/publish/ads/video/d$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/ads/video/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/video/d;->b(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/ads/video/g$a;Lcom/startapp/android/publish/ads/video/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/video/g$a;

.field final synthetic b:Lcom/startapp/android/publish/cache/h;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/startapp/android/publish/ads/video/d;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/video/d;Lcom/startapp/android/publish/ads/video/g$a;Lcom/startapp/android/publish/cache/h;Landroid/content/Context;)V
    .registers 5

    .line 66
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/d$2;->d:Lcom/startapp/android/publish/ads/video/d;

    iput-object p2, p0, Lcom/startapp/android/publish/ads/video/d$2;->a:Lcom/startapp/android/publish/ads/video/g$a;

    iput-object p3, p0, Lcom/startapp/android/publish/ads/video/d$2;->b:Lcom/startapp/android/publish/cache/h;

    iput-object p4, p0, Lcom/startapp/android/publish/ads/video/d$2;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/d$2;->a:Lcom/startapp/android/publish/ads/video/g$a;

    if-eqz v0, :cond_7

    .line 70
    invoke-interface {v0, p1}, Lcom/startapp/android/publish/ads/video/g$a;->a(Ljava/lang/String;)V

    :cond_7
    if-eqz p1, :cond_20

    .line 73
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/d$2;->b:Lcom/startapp/android/publish/cache/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/cache/h;->a(J)V

    .line 74
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/d$2;->b:Lcom/startapp/android/publish/cache/h;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/cache/h;->a(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/d$2;->d:Lcom/startapp/android/publish/ads/video/d;

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/d$2;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/d$2;->b:Lcom/startapp/android/publish/cache/h;

    invoke-virtual {p1, v0, v1}, Lcom/startapp/android/publish/ads/video/d;->a(Landroid/content/Context;Lcom/startapp/android/publish/cache/h;)V

    :cond_20
    return-void
.end method
