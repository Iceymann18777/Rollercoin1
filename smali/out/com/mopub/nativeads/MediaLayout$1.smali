.class Lcom/mopub/nativeads/MediaLayout$1;
.super Ljava/lang/Object;
.source "MediaLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MediaLayout;->setMode(Lcom/mopub/nativeads/MediaLayout$Mode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/MediaLayout;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MediaLayout;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/mopub/nativeads/MediaLayout$1;->this$0:Lcom/mopub/nativeads/MediaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout$1;->this$0:Lcom/mopub/nativeads/MediaLayout;

    invoke-static {v0}, Lcom/mopub/nativeads/MediaLayout;->access$000(Lcom/mopub/nativeads/MediaLayout;)V

    return-void
.end method
