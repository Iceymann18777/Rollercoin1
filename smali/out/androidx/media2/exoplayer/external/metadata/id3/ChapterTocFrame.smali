.class public final Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;
.super Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
.source "ChapterTocFrame.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final children:[Ljava/lang/String;

.field public final elementId:Ljava/lang/String;

.field public final isOrdered:Z

.field public final isRoot:Z

.field private final subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    const-string v0, "CTOC"

    .line 56
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isRoot:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isOrdered:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    new-array v1, v0, [Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    :goto_3c
    if-ge v2, v0, :cond_51

    .line 64
    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    const-class v3, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "elementId",
            "isRoot",
            "isOrdered",
            "children",
            "subFrames"
        }
    .end annotation

    const-string v0, "CTOC"

    .line 46
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 48
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isRoot:Z

    .line 49
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isOrdered:Z

    .line 50
    iput-object p4, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 51
    iput-object p5, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    return-void
.end method


# virtual methods
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

    if-eqz p1, :cond_41

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_41

    .line 90
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;

    .line 91
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isRoot:Z

    iget-boolean v3, p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isRoot:Z

    if-ne v2, v3, :cond_3f

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isOrdered:Z

    iget-boolean v3, p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isOrdered:Z

    if-ne v2, v3, :cond_3f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 93
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 94
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    .line 95
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    return v0

    :cond_41
    :goto_41
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 101
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isRoot:Z

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 102
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isOrdered:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 103
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    add-int/2addr v1, v0

    return v1
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

    .line 109
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isRoot:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 111
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isOrdered:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 112
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_2b

    aget-object v3, p2, v2

    .line 115
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_2b
    return-void
.end method
