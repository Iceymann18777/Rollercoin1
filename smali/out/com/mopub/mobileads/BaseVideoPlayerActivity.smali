.class public Lcom/mopub/mobileads/BaseVideoPlayerActivity;
.super Landroid/app/Activity;
.source "BaseVideoPlayerActivity.java"


# static fields
.field public static final VIDEO_CLASS_EXTRAS_KEY:Ljava/lang/String; = "video_view_class_name"

.field public static final VIDEO_URL:Ljava/lang/String; = "video_url"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static createIntentMraid(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/MraidVideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 43
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "video_view_class_name"

    const-string v1, "mraid"

    .line 44
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "video_url"

    .line 45
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createIntentNativeVideo(Landroid/content/Context;JLcom/mopub/mobileads/VastVideoConfig;)Landroid/content/Intent;
    .registers 6

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/MraidVideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 116
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "video_view_class_name"

    const-string v1, "native"

    .line 117
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "native_video_id"

    .line 118
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "native_vast_video_config"

    .line 119
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method static createIntentVast(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;JLcom/mopub/common/CreativeOrientation;)Landroid/content/Intent;
    .registers 7

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/MraidVideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 84
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "video_view_class_name"

    const-string v1, "vast"

    .line 85
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "vast_video_config"

    .line 86
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "broadcastIdentifier"

    .line 87
    invoke-virtual {v0, p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "com_mopub_orientation"

    .line 88
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method static createIntentVast(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfigTwo;JLcom/mopub/common/CreativeOrientation;)Landroid/content/Intent;
    .registers 7

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/MraidVideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 97
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "video_view_class_name"

    const-string v1, "vast_new"

    .line 98
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "vast_video_config"

    .line 99
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "broadcastIdentifier"

    .line 100
    invoke-virtual {v0, p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "com_mopub_orientation"

    .line 101
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static startMraid(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 32
    invoke-static {p0, p1}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->createIntentMraid(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 34
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_15

    .line 36
    :catch_8
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?"

    aput-object v1, p1, v0

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_15
    return-void
.end method

.method public static startNativeVideo(Landroid/content/Context;JLcom/mopub/mobileads/VastVideoConfig;)V
    .registers 4

    .line 106
    invoke-static {p0, p1, p2, p3}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->createIntentNativeVideo(Landroid/content/Context;JLcom/mopub/mobileads/VastVideoConfig;)Landroid/content/Intent;

    move-result-object p1

    .line 108
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_15

    .line 110
    :catch_8
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?"

    aput-object p3, p1, p2

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_15
    return-void
.end method

.method static startVast(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;JLcom/mopub/common/CreativeOrientation;)V
    .registers 5

    .line 53
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->createIntentVast(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;JLcom/mopub/common/CreativeOrientation;)Landroid/content/Intent;

    move-result-object p1

    .line 56
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_15

    .line 58
    :catch_8
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "Attempt to start with VastVideoConfig failed. Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?"

    aput-object p3, p1, p2

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_15
    return-void
.end method

.method static startVast(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfigTwo;JLcom/mopub/common/CreativeOrientation;)V
    .registers 5

    .line 68
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->createIntentVast(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfigTwo;JLcom/mopub/common/CreativeOrientation;)Landroid/content/Intent;

    move-result-object p1

    .line 71
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_15

    .line 73
    :catch_8
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "Attempt to start with VastVideoConfigTwo failed. Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?"

    aput-object p3, p1, p2

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_15
    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .registers 3

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "audio"

    .line 135
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_11
    return-void
.end method

.method protected onStart()V
    .registers 1

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 126
    invoke-static {p0}, Lcom/mopub/common/util/Utils;->hideNavigationBar(Landroid/app/Activity;)V

    return-void
.end method
