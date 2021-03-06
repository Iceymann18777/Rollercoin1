.class public final Landroidx/media2/exoplayer/external/metadata/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/Metadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 146
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/Metadata$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/Metadata$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    const/4 v0, 0x0

    .line 65
    :goto_c
    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 66
    const-class v2, Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_22
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_11

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    .line 57
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_16

    :cond_11
    const/4 p1, 0x0

    new-array p1, p1, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    .line 59
    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    :goto_16
    return-void
.end method

.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_8

    const/4 p1, 0x0

    new-array p1, p1, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    .line 48
    :cond_8
    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    return-void
.end method


# virtual methods
.method public varargs copyWithAppendedEntries([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesToAppend"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    .line 110
    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v1, v1

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    return-object p1
.end method

.method public copyWithAppendedEntriesFrom(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p0

    .line 99
    :cond_3
    iget-object p1, p1, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->copyWithAppendedEntries([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 122
    :cond_11
    check-cast p1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 123
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 128
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public length()I
    .registers 2

    .line 74
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v0, v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
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

    .line 140
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_15

    aget-object v3, p2, v2

    .line 142
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method
