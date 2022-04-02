.class Lcom/mopub/nativeads/NativeVideoViewController$3;
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

    .line 121
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoViewController$3;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 124
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoViewController$3;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    invoke-static {p1}, Lcom/mopub/nativeads/NativeVideoViewController;->access$200(Lcom/mopub/nativeads/NativeVideoViewController;)Lcom/mopub/nativeads/NativeVideoController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    .line 125
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoViewController$3;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    invoke-static {p1}, Lcom/mopub/nativeads/NativeVideoViewController;->access$100(Lcom/mopub/nativeads/NativeVideoViewController;)Lcom/mopub/nativeads/NativeFullScreenVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mopub/nativeads/NativeVideoViewController;->access$402(Lcom/mopub/nativeads/NativeVideoViewController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 126
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoViewController$3;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    invoke-static {p1}, Lcom/mopub/nativeads/NativeVideoViewController;->access$200(Lcom/mopub/nativeads/NativeVideoViewController;)Lcom/mopub/nativeads/NativeVideoController;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController$3;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    invoke-static {v0}, Lcom/mopub/nativeads/NativeVideoViewController;->access$500(Lcom/mopub/nativeads/NativeVideoViewController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/mopub/nativeads/NativeVideoController;->handleCtaClick(Landroid/content/Context;)V

    return-void
.end method
