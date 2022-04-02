.class public Landroidx/media2/session/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# static fields
.field public static final DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final METADATA_COMPAT_KEY_TO_METADATA_KEY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final METADATA_KEY_TO_METADATA_COMPAT_KEY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sDefaultBrowserRoot:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 90
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    const-string v1, "androidx.media2.session.MediaLibraryService"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v0, Landroidx/media2/session/MediaUtils;->sDefaultBrowserRoot:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    .line 93
    new-instance v0, Landroidx/media2/session/MediaUtils$1;

    invoke-direct {v0}, Landroidx/media2/session/MediaUtils$1;-><init>()V

    sput-object v0, Landroidx/media2/session/MediaUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media2/session/MediaUtils;->METADATA_COMPAT_KEY_TO_METADATA_KEY:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media2/session/MediaUtils;->METADATA_KEY_TO_METADATA_COMPAT_KEY:Ljava/util/Map;

    .line 109
    sget-object v0, Landroidx/media2/session/MediaUtils;->METADATA_COMPAT_KEY_TO_METADATA_KEY:Ljava/util/Map;

    const-string v1, "android.media.metadata.ADVERTISEMENT"

    const-string v2, "androidx.media2.metadata.ADVERTISEMENT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Landroidx/media2/session/MediaUtils;->METADATA_COMPAT_KEY_TO_METADATA_KEY:Ljava/util/Map;

    const-string v1, "android.media.metadata.BT_FOLDER_TYPE"

    const-string v2, "androidx.media2.metadata.BROWSABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Landroidx/media2/session/MediaUtils;->METADATA_COMPAT_KEY_TO_METADATA_KEY:Ljava/util/Map;

    const-string v1, "android.media.metadata.DOWNLOAD_STATUS"

    const-string v2, "androidx.media2.metadata.DOWNLOAD_STATUS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Landroidx/media2/session/MediaUtils;->METADATA_COMPAT_KEY_TO_METADATA_KEY:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 119
    sget-object v2, Landroidx/media2/session/MediaUtils;->METADATA_KEY_TO_METADATA_COMPAT_KEY:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 122
    sget-object v2, Landroidx/media2/session/MediaUtils;->METADATA_KEY_TO_METADATA_COMPAT_KEY:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 120
    :cond_6a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t map to the same value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    return-void
.end method

.method public static convertMediaItemListToParcelImplListSlice(Ljava/util/List;)Landroidx/media2/common/ParcelImplListSlice;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;)",
            "Landroidx/media2/common/ParcelImplListSlice;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 609
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 610
    :goto_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 611
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    if-eqz v2, :cond_1f

    .line 613
    invoke-static {v2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v2

    .line 614
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 617
    :cond_22
    new-instance p0, Landroidx/media2/common/ParcelImplListSlice;

    invoke-direct {p0, v0}, Landroidx/media2/common/ParcelImplListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static convertParcelImplListSliceToMediaItemList(Landroidx/media2/common/ParcelImplListSlice;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/ParcelImplListSlice;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 362
    :cond_4
    invoke-virtual {p0}, Landroidx/media2/common/ParcelImplListSlice;->getList()Ljava/util/List;

    move-result-object p0

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 364
    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 365
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    if-eqz v2, :cond_25

    .line 367
    invoke-static {v2}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_28
    return-object v0
.end method

.method public static upcastForPreparceling(Landroidx/media2/common/MediaItem;)Landroidx/media2/common/MediaItem;
    .registers 4

    if-eqz p0, :cond_2c

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media2/common/MediaItem;

    if-ne v0, v1, :cond_b

    goto :goto_2c

    .line 141
    :cond_b
    new-instance v0, Landroidx/media2/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media2/common/MediaItem$Builder;-><init>()V

    .line 142
    invoke-virtual {p0}, Landroidx/media2/common/MediaItem;->getStartPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/common/MediaItem$Builder;->setStartPosition(J)Landroidx/media2/common/MediaItem$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Landroidx/media2/common/MediaItem;->getEndPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/common/MediaItem$Builder;->setEndPosition(J)Landroidx/media2/common/MediaItem$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Landroidx/media2/common/MediaItem;->getMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media2/common/MediaItem$Builder;->setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media2/common/MediaItem$Builder;->build()Landroidx/media2/common/MediaItem;

    move-result-object p0

    :cond_2c
    :goto_2c
    return-object p0
.end method
