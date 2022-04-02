.class Lcom/startapp/android/publish/ads/video/d$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/video/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/ads/video/g$a;Lcom/startapp/android/publish/ads/video/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/startapp/android/publish/ads/video/g$a;

.field final synthetic d:Lcom/startapp/android/publish/ads/video/c$a;

.field final synthetic e:Lcom/startapp/android/publish/ads/video/d;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/video/d;Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/ads/video/g$a;Lcom/startapp/android/publish/ads/video/c$a;)V
    .registers 6

    .line 36
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/d$1;->e:Lcom/startapp/android/publish/ads/video/d;

    iput-object p2, p0, Lcom/startapp/android/publish/ads/video/d$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/startapp/android/publish/ads/video/d$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/startapp/android/publish/ads/video/d$1;->c:Lcom/startapp/android/publish/ads/video/g$a;

    iput-object p5, p0, Lcom/startapp/android/publish/ads/video/d$1;->d:Lcom/startapp/android/publish/ads/video/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 39
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/d$1;->e:Lcom/startapp/android/publish/ads/video/d;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/d$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/d$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/startapp/android/publish/ads/video/d$1;->c:Lcom/startapp/android/publish/ads/video/g$a;

    iget-object v4, p0, Lcom/startapp/android/publish/ads/video/d$1;->d:Lcom/startapp/android/publish/ads/video/c$a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/startapp/android/publish/ads/video/d;->a(Lcom/startapp/android/publish/ads/video/d;Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/ads/video/g$a;Lcom/startapp/android/publish/ads/video/c$a;)V

    return-void
.end method
