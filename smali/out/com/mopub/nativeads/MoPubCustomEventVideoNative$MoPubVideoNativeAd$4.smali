.class Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$4;
.super Ljava/lang/Object;
.source "MoPubCustomEventVideoNative.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->render(Lcom/mopub/nativeads/MediaLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V
    .registers 2

    .line 557
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$4;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 560
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$4;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$600(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Lcom/mopub/nativeads/MediaLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/nativeads/MediaLayout;->resetProgress()V

    .line 561
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$4;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$500(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Lcom/mopub/nativeads/NativeVideoController;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/mopub/nativeads/NativeVideoController;->seekTo(J)V

    .line 562
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$4;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$802(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;Z)Z

    .line 563
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$4;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-static {p1, v0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$1002(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;Z)Z

    return-void
.end method
