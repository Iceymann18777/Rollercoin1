.class public final Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
.super Ljava/lang/Object;
.source "IcyHeaders.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bitrate:I

.field public final genre:Ljava/lang/String;

.field public final isPublic:Z

.field public final metadataInterval:I

.field public final name:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 238
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitrate",
            "genre",
            "name",
            "url",
            "isPublic",
            "metadataInterval"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-eq p6, v0, :cond_b

    if-lez p6, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 162
    :goto_c
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 163
    iput p1, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    .line 164
    iput-object p2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    .line 166
    iput-object p4, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    .line 167
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->isPublic:Z

    .line 168
    iput p6, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    .line 176
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->isPublic:Z

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    return-void
.end method

.method public static parse(Ljava/util/Map;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseHeaders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;"
        }
    .end annotation

    const-string v0, "Invalid metadata interval: "

    const-string v1, "icy-br"

    .line 69
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "IcyHeaders"

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5e

    .line 71
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    :try_start_17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1b} :catch_41

    mul-int/lit16 v6, v6, 0x3e8

    if-lez v6, :cond_21

    const/4 v1, 0x1

    goto :goto_3d

    :cond_21
    :try_start_21
    const-string v7, "Invalid bitrate: "

    .line 77
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_32

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_38

    :cond_32
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_38
    invoke-static {v2, v7}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_3b} :catch_3f

    const/4 v1, 0x0

    const/4 v6, -0x1

    :goto_3d
    move v7, v6

    goto :goto_60

    :catch_3f
    nop

    goto :goto_42

    :catch_41
    const/4 v6, -0x1

    :goto_42
    const-string v7, "Invalid bitrate header: "

    .line 81
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_53

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_58

    :cond_53
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_58
    invoke-static {v2, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    const/4 v1, 0x0

    goto :goto_60

    :cond_5e
    const/4 v1, 0x0

    const/4 v7, -0x1

    :goto_60
    const-string v6, "icy-genre"

    .line 84
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v8, 0x0

    if-eqz v6, :cond_74

    .line 86
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v9, v1

    const/4 v1, 0x1

    goto :goto_75

    :cond_74
    move-object v9, v8

    :goto_75
    const-string v6, "icy-name"

    .line 89
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_88

    .line 91
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v10, v1

    const/4 v1, 0x1

    goto :goto_89

    :cond_88
    move-object v10, v8

    :goto_89
    const-string v6, "icy-url"

    .line 94
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_9c

    .line 96
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v11, v1

    const/4 v1, 0x1

    goto :goto_9d

    :cond_9c
    move-object v11, v8

    :goto_9d
    const-string v6, "icy-pub"

    .line 99
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_b6

    .line 101
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v12, v1

    const/4 v1, 0x1

    goto :goto_b7

    :cond_b6
    const/4 v12, 0x0

    :goto_b7
    const-string v6, "icy-metaint"

    .line 104
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_103

    .line 106
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 108
    :try_start_c7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_cb
    .catch Ljava/lang/NumberFormatException; {:try_start_c7 .. :try_end_cb} :catch_eb

    if-lez v5, :cond_cf

    move v3, v5

    goto :goto_e7

    .line 112
    :cond_cf
    :try_start_cf
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_de

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_e3

    :cond_de
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_e3
    invoke-static {v2, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e6
    .catch Ljava/lang/NumberFormatException; {:try_start_cf .. :try_end_e6} :catch_e9

    move v4, v1

    :goto_e7
    move v1, v4

    goto :goto_103

    :catch_e9
    move v3, v5

    goto :goto_ec

    :catch_eb
    nop

    .line 116
    :goto_ec
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_fb

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_100

    :cond_fb
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_100
    invoke-static {v2, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_103
    :goto_103
    if-eqz v1, :cond_111

    .line 120
    new-instance p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-object v6, p0

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move v12, v3

    invoke-direct/range {v6 .. v12}, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object v8, p0

    :cond_111
    return-object v8
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_47

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_47

    .line 188
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    .line 189
    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    iget v3, p1, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    if-ne v2, v3, :cond_45

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    .line 190
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    .line 191
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    .line 192
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->isPublic:Z

    iget-boolean v3, p1, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->isPublic:Z

    if-ne v2, v3, :cond_45

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    iget p1, p1, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    if-ne v2, p1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    return v0

    :cond_47
    :goto_47
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 200
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 201
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 202
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 203
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2a
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 204
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->isPublic:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 205
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 211
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    iget v3, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x50

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "IcyHeaders: name=\""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", genre=\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", bitrate="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", metadataInterval="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 225
    iget p2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->isPublic:Z

    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/util/Util;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 230
    iget p2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
