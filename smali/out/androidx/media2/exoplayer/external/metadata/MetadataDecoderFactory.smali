.class public interface abstract Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;
.super Ljava/lang/Object;
.source "MetadataDecoderFactory.java"


# static fields
.field public static final DEFAULT:Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;->DEFAULT:Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;

    return-void
.end method


# virtual methods
.method public abstract createDecoder(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation
.end method

.method public abstract supportsFormat(Landroidx/media2/exoplayer/external/Format;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation
.end method
