.class Lcom/startapp/android/publish/ads/a/c$1;
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

    .line 51
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/c$1;->a:Lcom/startapp/android/publish/ads/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c$1;->a:Lcom/startapp/android/publish/ads/a/c;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/a/c;->B()V

    .line 55
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c$1;->a:Lcom/startapp/android/publish/ads/a/c;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/a/c;->p()V

    return-void
.end method
