.class Landroidx/media2/widget/MediaControlView$PlayerCallback$1;
.super Ljava/lang/Object;
.source "MediaControlView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/widget/MediaControlView$PlayerCallback;->onPlayerStateChanged(Landroidx/media2/widget/PlayerWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/widget/MediaControlView$PlayerCallback;


# direct methods
.method constructor <init>(Landroidx/media2/widget/MediaControlView$PlayerCallback;)V
    .registers 2

    .line 2050
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback$1;->this$1:Landroidx/media2/widget/MediaControlView$PlayerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 2055
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
