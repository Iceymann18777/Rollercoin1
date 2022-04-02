.class Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/AudioFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 394
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;Landroidx/media2/exoplayer/external/audio/AudioFocusManager$1;)V
    .registers 3

    .line 394
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;-><init>(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusChange"
        }
    .end annotation

    const/4 v0, -0x3

    const/16 v1, 0x26

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq p1, v0, :cond_39

    const/4 v0, -0x2

    if-eq p1, v0, :cond_33

    if-eq p1, v4, :cond_2d

    if-eq p1, v5, :cond_27

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown focus change type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFocusManager"

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 413
    :cond_27
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {p1, v5}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$102(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;I)I

    goto :goto_4c

    .line 400
    :cond_2d
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {p1, v4}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$102(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;I)I

    goto :goto_4c

    .line 403
    :cond_33
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {p1, v3}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$102(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;I)I

    goto :goto_4c

    .line 406
    :cond_39
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$200(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 407
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {p1, v3}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$102(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;I)I

    goto :goto_4c

    .line 409
    :cond_47
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {p1, v2}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$102(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;I)I

    .line 422
    :goto_4c
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$100(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)I

    move-result p1

    if-eq p1, v4, :cond_8f

    if-eqz p1, :cond_9d

    if-eq p1, v5, :cond_85

    if-eq p1, v3, :cond_7a

    if-ne p1, v2, :cond_5d

    goto :goto_9d

    .line 440
    :cond_5d
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$100(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown audio focus state: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 431
    :cond_7a
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$300(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;->executePlayerCommand(I)V

    goto :goto_9d

    .line 437
    :cond_85
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$300(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;

    move-result-object p1

    invoke-interface {p1, v5}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;->executePlayerCommand(I)V

    goto :goto_9d

    .line 427
    :cond_8f
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$300(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;

    move-result-object p1

    invoke-interface {p1, v4}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;->executePlayerCommand(I)V

    .line 428
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {p1, v5}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$400(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;Z)V

    .line 444
    :cond_9d
    :goto_9d
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$100(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)I

    move-result p1

    if-ne p1, v2, :cond_a9

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_ab

    :cond_a9
    const/high16 p1, 0x3f800000    # 1.0f

    .line 447
    :goto_ab
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$500(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_c3

    .line 448
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$502(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;F)F

    .line 449
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$300(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;->setVolumeMultiplier(F)V

    :cond_c3
    return-void
.end method
