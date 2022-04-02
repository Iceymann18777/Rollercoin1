.class Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;
.super Ljava/lang/Object;
.source "AudioFocusHandler.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusListener"
.end annotation


# instance fields
.field private mPlayerDuckingVolume:F

.field private mPlayerVolumeBeforeDucking:F

.field final synthetic this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;)V
    .registers 2

    .line 385
    iput-object p1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 5

    const/4 v0, -0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_82

    const/4 v0, -0x2

    if-eq p1, v0, :cond_6d

    const/4 v0, -0x1

    if-eq p1, v0, :cond_58

    if-eq p1, v2, :cond_f

    goto/16 :goto_c3

    .line 395
    :cond_f
    iget-object p1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mPlayer:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->getPlayerState()I

    move-result p1

    if-ne p1, v2, :cond_34

    .line 397
    iget-object p1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 398
    :try_start_1e
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-boolean v0, v0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    if-nez v0, :cond_27

    .line 399
    monitor-exit p1

    goto/16 :goto_c3

    .line 401
    :cond_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_31

    .line 402
    iget-object p1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mPlayer:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->play()Lcom/google/common/util/concurrent/ListenableFuture;

    goto/16 :goto_c3

    :catchall_31
    move-exception v0

    .line 401
    :try_start_32
    monitor-exit p1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0

    .line 405
    :cond_34
    iget-object p1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mPlayer:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->getPlayerVolume()F

    move-result p1

    .line 407
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object v0, v0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_41
    iget v1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->mPlayerDuckingVolume:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_4a

    .line 410
    monitor-exit v0

    goto/16 :goto_c3

    .line 412
    :cond_4a
    iget p1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->mPlayerVolumeBeforeDucking:F

    .line 413
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_55

    .line 414
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object v0, v0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mPlayer:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, p1}, Landroidx/media2/player/MediaPlayer;->setPlayerVolume(F)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_c3

    :catchall_55
    move-exception p1

    .line 413
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p1

    .line 420
    :cond_58
    iget-object p1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mPlayer:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->pause()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 422
    iget-object p1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 423
    :try_start_64
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iput-boolean v1, v0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    .line 424
    monitor-exit p1

    goto :goto_c3

    :catchall_6a
    move-exception v0

    monitor-exit p1
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_6a

    throw v0

    .line 450
    :cond_6d
    iget-object p1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mPlayer:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->pause()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 452
    iget-object p1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 453
    :try_start_79
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iput-boolean v2, v0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    .line 454
    monitor-exit p1

    goto :goto_c3

    :catchall_7f
    move-exception v0

    monitor-exit p1
    :try_end_81
    .catchall {:try_start_79 .. :try_end_81} :catchall_7f

    throw v0

    .line 428
    :cond_82
    iget-object p1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 429
    :try_start_87
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object v0, v0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    if-nez v0, :cond_8f

    .line 431
    monitor-exit p1

    goto :goto_c3

    .line 433
    :cond_8f
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object v0, v0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    invoke-virtual {v0}, Landroidx/media/AudioAttributesCompat;->getContentType()I

    move-result v0

    if-ne v0, v2, :cond_9a

    const/4 v1, 0x1

    .line 435
    :cond_9a
    monitor-exit p1
    :try_end_9b
    .catchall {:try_start_87 .. :try_end_9b} :catchall_c7

    if-eqz v1, :cond_a5

    .line 437
    iget-object p1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mPlayer:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->pause()Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_c3

    .line 440
    :cond_a5
    iget-object p1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mPlayer:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->getPlayerVolume()F

    move-result p1

    const v0, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, p1

    .line 442
    iget-object v1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object v1, v1, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_b7
    iput p1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->mPlayerVolumeBeforeDucking:F

    .line 444
    iput v0, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->mPlayerDuckingVolume:F

    .line 445
    monitor-exit v1
    :try_end_bc
    .catchall {:try_start_b7 .. :try_end_bc} :catchall_c4

    .line 446
    iget-object p1, p0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;->mPlayer:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1, v0}, Landroidx/media2/player/MediaPlayer;->setPlayerVolume(F)Lcom/google/common/util/concurrent/ListenableFuture;

    :goto_c3
    return-void

    :catchall_c4
    move-exception p1

    .line 445
    :try_start_c5
    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw p1

    :catchall_c7
    move-exception v0

    .line 435
    :try_start_c8
    monitor-exit p1
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw v0
.end method
