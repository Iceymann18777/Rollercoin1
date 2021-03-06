.class public final Landroidx/media2/common/SessionPlayer$TrackInfo;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SessionPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/SessionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackInfo"
.end annotation


# instance fields
.field mFormat:Landroid/media/MediaFormat;

.field mId:I

.field mMediaItem:Landroidx/media2/common/MediaItem;

.field mParcelledFormat:Landroid/os/Bundle;

.field mTrackType:I

.field mUpCastMediaItem:Landroidx/media2/common/MediaItem;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 992
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V
    .registers 5

    .line 996
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 997
    iput p1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mId:I

    .line 998
    iput-object p2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    .line 999
    iput p3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mTrackType:I

    .line 1000
    iput-object p4, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    return-void
.end method

.method private intEquals(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z
    .registers 8

    .line 1173
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 1174
    invoke-virtual {p3, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1b

    if-eqz v1, :cond_1b

    .line 1176
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    return v2

    :cond_1b
    if-nez v0, :cond_20

    if-nez v1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    return v2
.end method

.method private parcelIntValue(Ljava/lang/String;)V
    .registers 4

    .line 1183
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1184
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_13
    return-void
.end method

.method private parcelStringValue(Ljava/lang/String;)V
    .registers 4

    .line 1189
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1190
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method private stringEquals(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z
    .registers 4

    .line 1169
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private unparcelIntValue(Ljava/lang/String;)V
    .registers 4

    .line 1195
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1196
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_13
    return-void
.end method

.method private unparcelStringValue(Ljava/lang/String;)V
    .registers 4

    .line 1201
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1202
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1096
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 1099
    :cond_13
    check-cast p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 1100
    iget v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mId:I

    iget v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->mId:I

    if-eq v2, v3, :cond_1c

    return v1

    .line 1103
    :cond_1c
    iget v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mTrackType:I

    iget v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->mTrackType:I

    if-eq v2, v3, :cond_23

    return v1

    .line 1106
    :cond_23
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-nez v2, :cond_2c

    iget-object v2, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-nez v2, :cond_2c

    goto :goto_7b

    .line 1108
    :cond_2c
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-nez v2, :cond_35

    iget-object v2, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-eqz v2, :cond_35

    return v1

    .line 1110
    :cond_35
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-eqz v2, :cond_3e

    iget-object v2, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-nez v2, :cond_3e

    return v1

    .line 1113
    :cond_3e
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    iget-object v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v4, "language"

    invoke-direct {p0, v4, v2, v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;->stringEquals(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    iget-object v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v4, "mime"

    .line 1114
    invoke-direct {p0, v4, v2, v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;->stringEquals(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    iget-object v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v4, "is-forced-subtitle"

    .line 1115
    invoke-direct {p0, v4, v2, v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;->intEquals(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    iget-object v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v4, "is-autoselect"

    .line 1116
    invoke-direct {p0, v4, v2, v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;->intEquals(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    iget-object v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v4, "is-default"

    .line 1117
    invoke-direct {p0, v4, v2, v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;->intEquals(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v2

    if-nez v2, :cond_7b

    goto :goto_a7

    .line 1123
    :cond_7b
    :goto_7b
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    if-nez v2, :cond_84

    iget-object v2, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    if-nez v2, :cond_84

    return v0

    .line 1125
    :cond_84
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    if-eqz v0, :cond_a7

    iget-object v2, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    if-nez v2, :cond_8d

    goto :goto_a7

    .line 1128
    :cond_8d
    invoke-virtual {v0}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 1130
    iget-object p1, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {p1}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1132
    :cond_9e
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    iget-object p1, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a7
    :goto_a7
    return v1
.end method

.method public getFormat()Landroid/media/MediaFormat;
    .registers 3

    .line 1031
    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 1032
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    return-object v0

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 1038
    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mId:I

    return v0
.end method

.method public getLanguage()Ljava/util/Locale;
    .registers 3

    .line 1018
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_b

    const-string v1, "language"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_10

    const-string v0, "und"

    .line 1022
    :cond_10
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getMediaItem()Landroidx/media2/common/MediaItem;
    .registers 2

    .line 1043
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    return-object v0
.end method

.method public getTrackType()I
    .registers 2

    .line 1009
    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mTrackType:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1075
    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 1077
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    if-eqz v2, :cond_21

    .line 1078
    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1079
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_22

    .line 1081
    :cond_1a
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    return v0
.end method

.method public onPostParceling()V
    .registers 2

    .line 1155
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    if-eqz v0, :cond_24

    .line 1156
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v0, "language"

    .line 1157
    invoke-direct {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->unparcelStringValue(Ljava/lang/String;)V

    const-string v0, "mime"

    .line 1158
    invoke-direct {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->unparcelStringValue(Ljava/lang/String;)V

    const-string v0, "is-forced-subtitle"

    .line 1159
    invoke-direct {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->unparcelIntValue(Ljava/lang/String;)V

    const-string v0, "is-autoselect"

    .line 1160
    invoke-direct {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->unparcelIntValue(Ljava/lang/String;)V

    const-string v0, "is-default"

    .line 1161
    invoke-direct {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->unparcelIntValue(Ljava/lang/String;)V

    .line 1163
    :cond_24
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_2c

    .line 1164
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mUpCastMediaItem:Landroidx/media2/common/MediaItem;

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    :cond_2c
    return-void
.end method

.method public onPreParceling(Z)V
    .registers 3

    .line 1138
    iget-object p1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    if-eqz p1, :cond_24

    .line 1139
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mParcelledFormat:Landroid/os/Bundle;

    const-string p1, "language"

    .line 1140
    invoke-direct {p0, p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->parcelStringValue(Ljava/lang/String;)V

    const-string p1, "mime"

    .line 1141
    invoke-direct {p0, p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->parcelStringValue(Ljava/lang/String;)V

    const-string p1, "is-forced-subtitle"

    .line 1142
    invoke-direct {p0, p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->parcelIntValue(Ljava/lang/String;)V

    const-string p1, "is-autoselect"

    .line 1143
    invoke-direct {p0, p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->parcelIntValue(Ljava/lang/String;)V

    const-string p1, "is-default"

    .line 1144
    invoke-direct {p0, p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->parcelIntValue(Ljava/lang/String;)V

    .line 1148
    :cond_24
    iget-object p1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    if-eqz p1, :cond_33

    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mUpCastMediaItem:Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_33

    .line 1149
    new-instance v0, Landroidx/media2/common/MediaItem;

    invoke-direct {v0, p1}, Landroidx/media2/common/MediaItem;-><init>(Landroidx/media2/common/MediaItem;)V

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mUpCastMediaItem:Landroidx/media2/common/MediaItem;

    :cond_33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1049
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id: "

    .line 1050
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", MediaItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", TrackType: "

    .line 1052
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    iget v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mTrackType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_54

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4e

    const/4 v2, 0x4

    if-eq v1, v2, :cond_48

    const-string v1, "UNKNOWN"

    .line 1064
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    :cond_48
    const-string v1, "SUBTITLE"

    .line 1061
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    :cond_4e
    const-string v1, "AUDIO"

    .line 1058
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    :cond_54
    const-string v1, "VIDEO"

    .line 1055
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    :goto_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
