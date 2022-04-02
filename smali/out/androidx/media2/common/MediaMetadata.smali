.class public final Landroidx/media2/common/MediaMetadata;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "MediaMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/MediaMetadata$BitmapEntry;
    }
.end annotation


# static fields
.field static final METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_URI_ORDER:[Ljava/lang/String;


# instance fields
.field mBitmapListSlice:Landroidx/media2/common/ParcelImplListSlice;

.field mBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 708
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const/4 v1, 0x1

    .line 709
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {v0, v3, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v3, "android.media.metadata.ALBUM"

    invoke-virtual {v0, v3, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v3, "android.media.metadata.AUTHOR"

    invoke-virtual {v0, v3, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v3, "android.media.metadata.WRITER"

    invoke-virtual {v0, v3, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v3, "android.media.metadata.COMPOSER"

    invoke-virtual {v0, v3, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v3, "android.media.metadata.COMPILATION"

    invoke-virtual {v0, v3, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v3, "android.media.metadata.DATE"

    invoke-virtual {v0, v3, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v3, "android.media.metadata.YEAR"

    invoke-virtual {v0, v3, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v3, "android.media.metadata.GENRE"

    invoke-virtual {v0, v3, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v3, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {v0, v3, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v3, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {v0, v3, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v3, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {v0, v3, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v3, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v0, v3, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android.media.metadata.ART"

    invoke-virtual {v0, v4, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v5, "android.media.metadata.ART_URI"

    invoke-virtual {v0, v5, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v6, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v0, v6, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v7, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v0, v7, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "android.media.metadata.USER_RATING"

    invoke-virtual {v0, v9, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v9, "android.media.metadata.RATING"

    invoke-virtual {v0, v9, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v8, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v0, v8, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v8, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {v0, v8, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v8, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {v0, v8, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v8, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v0, v8, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v3, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v0, v3, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v9, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v0, v9, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v9, "android.media.metadata.MEDIA_URI"

    invoke-virtual {v0, v9, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "androidx.media2.metadata.RADIO_FREQUENCY"

    invoke-virtual {v0, v10, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v9, "androidx.media2.metadata.RADIO_PROGRAM_NAME"

    invoke-virtual {v0, v9, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v1, "androidx.media2.metadata.BROWSABLE"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v1, "androidx.media2.metadata.PLAYABLE"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v1, "androidx.media2.metadata.ADVERTISEMENT"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const-string v1, "androidx.media2.metadata.DOWNLOAD_STATUS"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    sget-object v0, Landroidx/media2/common/MediaMetadata;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "androidx.media2.metadata.EXTRAS"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "android.media.metadata.TITLE"

    const-string v10, "android.media.metadata.ARTIST"

    const-string v11, "android.media.metadata.ALBUM"

    const-string v12, "android.media.metadata.ALBUM_ARTIST"

    const-string v13, "android.media.metadata.WRITER"

    const-string v14, "android.media.metadata.AUTHOR"

    const-string v15, "android.media.metadata.COMPOSER"

    .line 747
    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/common/MediaMetadata;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    .line 758
    filled-new-array {v8, v4, v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/common/MediaMetadata;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    .line 765
    filled-new-array {v3, v5, v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/common/MediaMetadata;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 780
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_9

    .line 798
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 796
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    .line 913
    :try_start_3
    iget-object v1, p0, Landroidx/media2/common/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_d

    move-object v0, p1

    goto :goto_15

    :catch_d
    move-exception p1

    const-string v1, "MediaMetadata"

    const-string v2, "Failed to retrieve a key as Bitmap."

    .line 916
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-object v0

    .line 909
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 5

    if-eqz p1, :cond_b

    .line 859
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->mBundle:Landroid/os/Bundle;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 857
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_11

    .line 841
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 843
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1

    .line 839
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3

    if-eqz p1, :cond_9

    .line 813
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 811
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPostParceling()V
    .registers 6

    .line 1002
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->mBitmapListSlice:Landroidx/media2/common/ParcelImplListSlice;

    invoke-virtual {v0}, Landroidx/media2/common/ParcelImplListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1003
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 1004
    invoke-static {v2}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaMetadata$BitmapEntry;

    .line 1005
    iget-object v3, p0, Landroidx/media2/common/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroidx/media2/common/MediaMetadata$BitmapEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/media2/common/MediaMetadata$BitmapEntry;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_a

    .line 1007
    :cond_2a
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 1008
    iput-object v0, p0, Landroidx/media2/common/MediaMetadata;->mBitmapListSlice:Landroidx/media2/common/ParcelImplListSlice;

    return-void
.end method

.method public onPreParceling(Z)V
    .registers 7

    .line 978
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 979
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 980
    iget-object v1, p0, Landroidx/media2/common/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 981
    iget-object v3, p0, Landroidx/media2/common/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 982
    instance-of v4, v3, Landroid/graphics/Bitmap;

    if-nez v4, :cond_2b

    goto :goto_14

    .line 986
    :cond_2b
    check-cast v3, Landroid/graphics/Bitmap;

    .line 987
    new-instance v4, Landroidx/media2/common/MediaMetadata$BitmapEntry;

    invoke-direct {v4, v2, v3}, Landroidx/media2/common/MediaMetadata$BitmapEntry;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v4}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 990
    :cond_3d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 991
    iget-object v2, p0, Landroidx/media2/common/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_41

    .line 993
    :cond_53
    new-instance v0, Landroidx/media2/common/ParcelImplListSlice;

    invoke-direct {v0, p1}, Landroidx/media2/common/ParcelImplListSlice;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Landroidx/media2/common/MediaMetadata;->mBitmapListSlice:Landroidx/media2/common/ParcelImplListSlice;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 956
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
