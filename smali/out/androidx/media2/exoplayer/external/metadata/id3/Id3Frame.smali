.class public abstract Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
.super Ljava/lang/Object;
.source "Id3Frame.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;


# instance fields
.field public final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    return-object v0
.end method
