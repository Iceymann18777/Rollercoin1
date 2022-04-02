.class Lcom/startapp/android/publish/ads/a/d$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/a/d;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/a/d;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/a/d;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/d$3;->a:Lcom/startapp/android/publish/ads/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 174
    iget-object p1, p0, Lcom/startapp/android/publish/ads/a/d$3;->a:Lcom/startapp/android/publish/ads/a/d;

    invoke-static {p1}, Lcom/startapp/android/publish/ads/a/d;->a(Lcom/startapp/android/publish/ads/a/d;)Lcom/startapp/android/publish/ads/a/d$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/a/d$b;->close()V

    return-void
.end method
