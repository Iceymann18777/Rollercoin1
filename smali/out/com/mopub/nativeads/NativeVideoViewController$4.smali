.class Lcom/mopub/nativeads/NativeVideoViewController$4;
.super Ljava/lang/Object;
.source "NativeVideoViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeVideoViewController;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/NativeVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/NativeVideoViewController;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoViewController$4;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 133
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoViewController$4;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    invoke-static {p1}, Lcom/mopub/nativeads/NativeVideoViewController;->access$200(Lcom/mopub/nativeads/NativeVideoViewController;)Lcom/mopub/nativeads/NativeVideoController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    .line 134
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoViewController$4;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    invoke-static {p1}, Lcom/mopub/nativeads/NativeVideoViewController;->access$100(Lcom/mopub/nativeads/NativeVideoViewController;)Lcom/mopub/nativeads/NativeFullScreenVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mopub/nativeads/NativeVideoViewController;->access$402(Lcom/mopub/nativeads/NativeVideoViewController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 135
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoViewController$4;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    invoke-static {p1}, Lcom/mopub/nativeads/NativeVideoViewController;->access$600(Lcom/mopub/nativeads/NativeVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getPrivacyInformationIconClickthroughUrl()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string p1, "https://www.mopub.com/optout/"

    .line 139
    :cond_2d
    new-instance v1, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v1}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    new-array v0, v0, [Lcom/mopub/common/UrlAction;

    invoke-virtual {v1, v2, v0}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoViewController$4;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    invoke-static {v1}, Lcom/mopub/nativeads/NativeVideoViewController;->access$700(Lcom/mopub/nativeads/NativeVideoViewController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
