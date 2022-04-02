.class Lcom/startapp/android/publish/ads/a/c$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/a/c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/a/c;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/c$2;->a:Lcom/startapp/android/publish/ads/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c$2;->a:Lcom/startapp/android/publish/ads/a/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/ads/a/c;->a(Lcom/startapp/android/publish/ads/a/c;Z)Z

    .line 63
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c$2;->a:Lcom/startapp/android/publish/ads/a/c;

    iget-object v1, v0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/a/c;->b(Landroid/webkit/WebView;)V

    return-void
.end method
