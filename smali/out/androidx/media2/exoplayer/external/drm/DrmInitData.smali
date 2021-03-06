.class public final Landroidx/media2/exoplayer/external/drm/DrmInitData;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/util/Comparator<",
        "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hashCode:I

.field public final schemeDataCount:I

.field private final schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

.field public final schemeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 255
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 149
    sget-object v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 150
    array-length p1, p1

    iput p1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDataCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schemeType",
            "schemeDatas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 115
    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "schemeType",
            "cloneSchemeDatas",
            "schemeDatas"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz p2, :cond_e

    .line 137
    invoke-virtual {p3}, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 139
    :cond_e
    iput-object p3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 140
    array-length p1, p3

    iput p1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDataCount:I

    .line 143
    invoke-static {p3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schemeType",
            "schemeDatas"
        }
    .end annotation

    const/4 v0, 0x1

    .line 130
    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "schemeDatas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 107
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "schemeDatas"
        }
    .end annotation

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    return-void
.end method

.method private static containsSchemeDataWithUuid(Ljava/util/ArrayList;ILjava/util/UUID;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "datas",
            "limit",
            "uuid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/UUID;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_19

    .line 275
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    return v0
.end method

.method public static createSessionCreationData(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manifestData",
            "mediaData"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_1f

    .line 67
    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 68
    iget-object p0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    array-length v4, p0

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_20

    aget-object v6, p0, v5

    .line 69
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 70
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1f
    move-object v3, v2

    :cond_20
    if-eqz p1, :cond_48

    if-nez v3, :cond_27

    .line 77
    iget-object p0, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    move-object v3, p0

    .line 79
    :cond_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 80
    iget-object p1, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    array-length v4, p1

    :goto_2e
    if-ge v1, v4, :cond_48

    aget-object v5, p1, v1

    .line 81
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-static {v5}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v6

    invoke-static {v0, p0, v6}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->containsSchemeDataWithUuid(Ljava/util/ArrayList;ILjava/util/UUID;)Z

    move-result v6

    if-nez v6, :cond_45

    .line 82
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 87
    :cond_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4f

    goto :goto_54

    :cond_4f
    new-instance v2, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {v2, v3, v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :goto_54
    return-object v2
.end method


# virtual methods
.method public compare(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "second"
        }
    .end annotation

    .line 238
    sget-object v0, Landroidx/media2/exoplayer/external/C;->UUID_NIL:Ljava/util/UUID;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object p1, Landroidx/media2/exoplayer/external/C;->UUID_NIL:Ljava/util/UUID;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x0

    goto :goto_28

    :cond_1a
    const/4 p1, 0x1

    goto :goto_28

    .line 239
    :cond_1c
    invoke-static {p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p2}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    :goto_28
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "first",
            "second"
        }
    .end annotation

    .line 40
    check-cast p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    check-cast p2, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->compare(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)I

    move-result p1

    return p1
.end method

.method public copyWithSchemeType(Ljava/lang/String;)Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "schemeType"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    .line 191
    :cond_9
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-direct {v0, p1, v1, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    return-object v0
.end method

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

    if-eqz p1, :cond_2b

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 231
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 232
    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 233
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public get(I)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .registers 3

    .line 215
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->hashCode:I

    if-nez v0, :cond_19

    .line 216
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    mul-int/lit8 v0, v0, 0x1f

    .line 217
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->hashCode:I

    .line 220
    :cond_19
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->hashCode:I

    return v0
.end method

.method public merge(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drmInitData"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v1, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 206
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 203
    :goto_12
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    iget-object v0, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 208
    :goto_1c
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 209
    invoke-static {v1, p1}, Landroidx/media2/exoplayer/external/util/Util;->nullSafeArrayConcatenation([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 210
    new-instance v1, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {v1, v0, p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
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

    .line 251
    iget-object p2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object p2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
