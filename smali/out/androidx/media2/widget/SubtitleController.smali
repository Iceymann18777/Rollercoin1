.class Landroidx/media2/widget/SubtitleController;
.super Ljava/lang/Object;
.source "SubtitleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/SubtitleController$Listener;,
        Landroidx/media2/widget/SubtitleController$Anchor;,
        Landroidx/media2/widget/SubtitleController$Renderer;,
        Landroidx/media2/widget/SubtitleController$MediaFormatUtil;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAnchor:Landroidx/media2/widget/SubtitleController$Anchor;

.field private final mCallback:Landroid/os/Handler$Callback;

.field private mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroidx/media2/widget/SubtitleController$Listener;

.field private mRenderers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/widget/SubtitleController$Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderersLock:Ljava/lang/Object;

.field private mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

.field private mShowing:Z

.field private mTimeProvider:Landroidx/media2/widget/MediaTimeProvider;

.field private mTrackIsExplicit:Z

.field private mTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/widget/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final mTracksLock:Ljava/lang/Object;

.field private mVisibilityIsExplicit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/media2/widget/MediaTimeProvider;Landroidx/media2/widget/SubtitleController$Listener;)V
    .registers 5

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleController;->mTracksLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Landroidx/media2/widget/SubtitleController$1;

    invoke-direct {v0, p0}, Landroidx/media2/widget/SubtitleController$1;-><init>(Landroidx/media2/widget/SubtitleController;)V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    .line 79
    new-instance v0, Landroidx/media2/widget/SubtitleController$2;

    invoke-direct {v0, p0}, Landroidx/media2/widget/SubtitleController$2;-><init>(Landroidx/media2/widget/SubtitleController;)V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mTrackIsExplicit:Z

    .line 281
    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mVisibilityIsExplicit:Z

    .line 106
    iput-object p2, p0, Landroidx/media2/widget/SubtitleController;->mTimeProvider:Landroidx/media2/widget/MediaTimeProvider;

    .line 107
    iput-object p3, p0, Landroidx/media2/widget/SubtitleController;->mListener:Landroidx/media2/widget/SubtitleController$Listener;

    .line 109
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/media2/widget/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    .line 110
    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mShowing:Z

    .line 111
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/media2/widget/SubtitleController;->mTracks:Ljava/util/ArrayList;

    const-string p2, "captioning"

    .line 113
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Landroidx/media2/widget/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    return-void
.end method

.method private checkAnchorLooper()V
    .registers 1

    return-void
.end method

.method private getRenderingWidget()Landroidx/media2/widget/SubtitleTrack$RenderingWidget;
    .registers 2

    .line 144
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_6
    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleTrack;->getRenderingWidget()Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method private processOnAnchor(Landroid/os/Message;)V
    .registers 4

    .line 515
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    .line 516
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_17

    .line 518
    :cond_12
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_17
    return-void
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)Landroidx/media2/widget/SubtitleTrack;
    .registers 6

    .line 342
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_3
    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/widget/SubtitleController$Renderer;

    .line 344
    invoke-virtual {v2, p1}, Landroidx/media2/widget/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 345
    invoke-virtual {v2, p1}, Landroidx/media2/widget/SubtitleController$Renderer;->createTrack(Landroid/media/MediaFormat;)Landroidx/media2/widget/SubtitleTrack;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 347
    iget-object p1, p0, Landroidx/media2/widget/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_41

    .line 348
    :try_start_24
    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_33

    .line 349
    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v3, p0, Landroidx/media2/widget/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 352
    :cond_33
    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_3b

    .line 354
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_41

    return-object v2

    :catchall_3b
    move-exception v1

    .line 353
    :try_start_3c
    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v1

    .line 358
    :cond_3e
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_41
    move-exception p1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_41

    goto :goto_45

    :goto_44
    throw p1

    :goto_45
    goto :goto_44
.end method

.method doHide()V
    .registers 2

    const/4 v0, 0x1

    .line 391
    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mVisibilityIsExplicit:Z

    .line 392
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    if-eqz v0, :cond_a

    .line 393
    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleTrack;->hide()V

    :cond_a
    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mShowing:Z

    return-void
.end method

.method doSelectDefaultTrack()V
    .registers 4

    .line 290
    iget-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mTrackIsExplicit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 291
    iget-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mVisibilityIsExplicit:Z

    if-eqz v0, :cond_a

    return-void

    .line 296
    :cond_a
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    if-eqz v0, :cond_23

    .line 298
    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "is-forced-subtitle"

    .line 297
    invoke-static {v0, v2, v1}, Landroidx/media2/widget/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_32

    .line 301
    :cond_23
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    if-eqz v0, :cond_35

    .line 302
    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleTrack;->getTrackType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_35

    .line 303
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleController;->hide()V

    goto :goto_35

    .line 300
    :cond_32
    :goto_32
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleController;->show()V

    .line 305
    :cond_35
    :goto_35
    iput-boolean v1, p0, Landroidx/media2/widget/SubtitleController;->mVisibilityIsExplicit:Z

    .line 311
    :cond_37
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleController;->getDefaultTrack()Landroidx/media2/widget/SubtitleTrack;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 313
    invoke-virtual {p0, v0}, Landroidx/media2/widget/SubtitleController;->selectTrack(Landroidx/media2/widget/SubtitleTrack;)Z

    .line 314
    iput-boolean v1, p0, Landroidx/media2/widget/SubtitleController;->mTrackIsExplicit:Z

    .line 315
    iget-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v0, :cond_4b

    .line 316
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleController;->show()V

    .line 317
    iput-boolean v1, p0, Landroidx/media2/widget/SubtitleController;->mVisibilityIsExplicit:Z

    :cond_4b
    return-void
.end method

.method doSelectTrack(Landroidx/media2/widget/SubtitleTrack;)V
    .registers 4

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mTrackIsExplicit:Z

    .line 173
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    if-ne v0, p1, :cond_8

    return-void

    :cond_8
    if-eqz v0, :cond_13

    .line 178
    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleTrack;->hide()V

    .line 179
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/widget/SubtitleTrack;->setTimeProvider(Landroidx/media2/widget/MediaTimeProvider;)V

    .line 182
    :cond_13
    iput-object p1, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    .line 183
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mAnchor:Landroidx/media2/widget/SubtitleController$Anchor;

    if-eqz v0, :cond_20

    .line 184
    invoke-direct {p0}, Landroidx/media2/widget/SubtitleController;->getRenderingWidget()Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/widget/SubtitleController$Anchor;->setSubtitleWidget(Landroidx/media2/widget/SubtitleTrack$RenderingWidget;)V

    .line 187
    :cond_20
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    if-eqz v0, :cond_2e

    .line 188
    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mTimeProvider:Landroidx/media2/widget/MediaTimeProvider;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/SubtitleTrack;->setTimeProvider(Landroidx/media2/widget/MediaTimeProvider;)V

    .line 189
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleTrack;->show()V

    .line 192
    :cond_2e
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mListener:Landroidx/media2/widget/SubtitleController$Listener;

    if-eqz v0, :cond_35

    .line 193
    invoke-interface {v0, p1}, Landroidx/media2/widget/SubtitleController$Listener;->onSubtitleTrackSelected(Landroidx/media2/widget/SubtitleTrack;)V

    :cond_35
    return-void
.end method

.method doShow()V
    .registers 2

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mShowing:Z

    .line 374
    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mVisibilityIsExplicit:Z

    .line 375
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    if-eqz v0, :cond_c

    .line 376
    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleTrack;->show()V

    :cond_c
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 120
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDefaultTrack()Landroidx/media2/widget/SubtitleTrack;
    .registers 17

    move-object/from16 v1, p0

    .line 224
    iget-object v0, v1, Landroidx/media2/widget/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_f

    .line 227
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    goto :goto_10

    :cond_f
    move-object v2, v0

    .line 229
    :goto_10
    iget-object v3, v1, Landroidx/media2/widget/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 231
    iget-object v5, v1, Landroidx/media2/widget/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter v5

    .line 232
    :try_start_1b
    iget-object v6, v1, Landroidx/media2/widget/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ac

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media2/widget/SubtitleTrack;

    .line 233
    invoke-virtual {v9}, Landroidx/media2/widget/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v10

    const-string v11, "language"

    .line 234
    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "is-forced-subtitle"

    const/4 v13, 0x0

    .line 236
    invoke-static {v10, v12, v13}, Landroidx/media2/widget/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_44

    const/4 v12, 0x1

    goto :goto_45

    :cond_44
    const/4 v12, 0x0

    :goto_45
    const-string v14, "is-autoselect"

    .line 238
    invoke-static {v10, v14, v4}, Landroidx/media2/widget/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_4f

    const/4 v14, 0x1

    goto :goto_50

    :cond_4f
    const/4 v14, 0x0

    :goto_50
    const-string v15, "is-default"

    .line 240
    invoke-static {v10, v15, v13}, Landroidx/media2/widget/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_5a

    const/4 v10, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v10, 0x0

    :goto_5b
    if-eqz v2, :cond_80

    .line 243
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    const-string v4, ""

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    .line 244
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    .line 245
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    goto :goto_80

    :cond_7e
    const/4 v4, 0x0

    goto :goto_81

    :cond_80
    :goto_80
    const/4 v4, 0x1

    :goto_81
    if-eqz v12, :cond_85

    const/4 v11, 0x0

    goto :goto_87

    :cond_85
    const/16 v11, 0x8

    :goto_87
    if-nez v0, :cond_8d

    if-eqz v10, :cond_8d

    const/4 v15, 0x4

    goto :goto_8e

    :cond_8d
    const/4 v15, 0x0

    :goto_8e
    add-int/2addr v11, v15

    if-eqz v14, :cond_92

    goto :goto_93

    :cond_92
    const/4 v13, 0x2

    :goto_93
    add-int/2addr v11, v13

    add-int/2addr v11, v4

    if-eqz v3, :cond_9b

    if-nez v12, :cond_9b

    :cond_99
    :goto_99
    const/4 v4, 0x1

    goto :goto_23

    :cond_9b
    if-nez v0, :cond_9f

    if-nez v10, :cond_a7

    :cond_9f
    if-eqz v4, :cond_99

    if-nez v14, :cond_a7

    if-nez v12, :cond_a7

    if-eqz v0, :cond_99

    :cond_a7
    if-le v11, v8, :cond_99

    move-object v7, v9

    move v8, v11

    goto :goto_99

    .line 264
    :cond_ac
    monitor-exit v5

    return-object v7

    :catchall_ae
    move-exception v0

    monitor-exit v5
    :try_end_b0
    .catchall {:try_start_1b .. :try_end_b0} :catchall_ae

    goto :goto_b2

    :goto_b1
    throw v0

    :goto_b2
    goto :goto_b1
.end method

.method public hide()V
    .registers 3

    .line 386
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/widget/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method

.method public registerRenderer(Landroidx/media2/widget/SubtitleController$Renderer;)V
    .registers 4

    .line 437
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_3
    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 441
    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public selectDefaultTrack()V
    .registers 3

    .line 285
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/widget/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method

.method public selectTrack(Landroidx/media2/widget/SubtitleTrack;)Z
    .registers 4

    if-eqz p1, :cond_c

    .line 162
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return p1

    .line 166
    :cond_c
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/widget/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setAnchor(Landroidx/media2/widget/SubtitleController$Anchor;)V
    .registers 4

    .line 490
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mAnchor:Landroidx/media2/widget/SubtitleController$Anchor;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 495
    invoke-direct {p0}, Landroidx/media2/widget/SubtitleController;->checkAnchorLooper()V

    .line 496
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mAnchor:Landroidx/media2/widget/SubtitleController$Anchor;

    invoke-interface {v0, v1}, Landroidx/media2/widget/SubtitleController$Anchor;->setSubtitleWidget(Landroidx/media2/widget/SubtitleTrack$RenderingWidget;)V

    .line 498
    :cond_10
    iput-object p1, p0, Landroidx/media2/widget/SubtitleController;->mAnchor:Landroidx/media2/widget/SubtitleController$Anchor;

    .line 499
    iput-object v1, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_31

    .line 501
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mAnchor:Landroidx/media2/widget/SubtitleController$Anchor;

    invoke-interface {v0}, Landroidx/media2/widget/SubtitleController$Anchor;->getSubtitleLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 502
    invoke-direct {p0}, Landroidx/media2/widget/SubtitleController;->checkAnchorLooper()V

    .line 503
    iget-object p1, p0, Landroidx/media2/widget/SubtitleController;->mAnchor:Landroidx/media2/widget/SubtitleController$Anchor;

    invoke-direct {p0}, Landroidx/media2/widget/SubtitleController;->getRenderingWidget()Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/media2/widget/SubtitleController$Anchor;->setSubtitleWidget(Landroidx/media2/widget/SubtitleTrack$RenderingWidget;)V

    :cond_31
    return-void
.end method

.method public show()V
    .registers 3

    .line 368
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/widget/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method
