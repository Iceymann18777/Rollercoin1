.class public final Landroidx/media2/exoplayer/external/metadata/scte35/SpliceNullCommand;
.super Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;
.source "SpliceNullCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/scte35/SpliceNullCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceNullCommand$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceNullCommand$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceNullCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;-><init>()V

    return-void
.end method


# virtual methods
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

    return-void
.end method
