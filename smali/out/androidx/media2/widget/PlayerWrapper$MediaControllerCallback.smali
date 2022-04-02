.class Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;
.super Landroidx/media2/session/MediaController$ControllerCallback;
.source "PlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/PlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/PlayerWrapper;


# direct methods
.method constructor <init>(Landroidx/media2/widget/PlayerWrapper;)V
    .registers 2

    .line 439
    iput-object p1, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-direct {p0}, Landroidx/media2/session/MediaController$ControllerCallback;-><init>()V

    return-void
.end method
