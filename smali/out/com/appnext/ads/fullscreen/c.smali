.class public final Lcom/appnext/ads/fullscreen/c;
.super Lcom/appnext/core/p;
.source "SourceFile"


# static fields
.field private static aP:Lcom/appnext/ads/fullscreen/c;


# instance fields
.field private aQ:Ljava/lang/String;

.field private aR:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Lcom/appnext/core/p;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://cdn.appnext.com/tools/sdk/confign/fullscreen/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appnext/core/f;->bi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/fullscreen_config.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/c;->aQ:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/appnext/ads/fullscreen/c;->aR:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized m()Lcom/appnext/ads/fullscreen/c;
    .registers 2

    const-class v0, Lcom/appnext/ads/fullscreen/c;

    monitor-enter v0

    .line 21
    :try_start_3
    sget-object v1, Lcom/appnext/ads/fullscreen/c;->aP:Lcom/appnext/ads/fullscreen/c;

    if-nez v1, :cond_e

    .line 22
    new-instance v1, Lcom/appnext/ads/fullscreen/c;

    invoke-direct {v1}, Lcom/appnext/ads/fullscreen/c;-><init>()V

    sput-object v1, Lcom/appnext/ads/fullscreen/c;->aP:Lcom/appnext/ads/fullscreen/c;

    .line 24
    :cond_e
    sget-object v1, Lcom/appnext/ads/fullscreen/c;->aP:Lcom/appnext/ads/fullscreen/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/c;->aR:Ljava/util/HashMap;

    return-void
.end method

.method protected final getUrl()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/c;->aQ:Ljava/lang/String;

    return-object v0
.end method

.method protected final n()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/c;->aR:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final o()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "can_close"

    const-string v2, "true"

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "show_close"

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "show_close_time"

    const-string v3, "2000"

    .line 53
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_length"

    const-string v3, "15"

    .line 54
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mute"

    const-string v3, "false"

    .line 55
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "urlApp_protection"

    .line 56
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pview"

    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "min_internet_connection_video"

    const-string v2, "3g"

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "banner_expiration_time"

    const-string v2, "0"

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "postpone_vta_sec"

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "postpone_impression_sec"

    .line 61
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "resolve_timeout"

    const-string v4, "8"

    .line 62
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "num_saved_videos"

    const-string v4, "5"

    .line 63
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "caption_text_time"

    const-string v4, "3"

    .line 64
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ads_caching_time_minutes"

    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gdpr"

    .line 66
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clickType_a"

    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clickType_b"

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "didPrivacy"

    .line 69
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stp_flag"

    .line 70
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final setUrl(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/c;->aQ:Ljava/lang/String;

    return-void
.end method
