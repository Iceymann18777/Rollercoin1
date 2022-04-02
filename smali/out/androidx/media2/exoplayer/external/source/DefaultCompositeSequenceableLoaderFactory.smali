.class public final Landroidx/media2/exoplayer/external/source/DefaultCompositeSequenceableLoaderFactory;
.super Ljava/lang/Object;
.source "DefaultCompositeSequenceableLoaderFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs createCompositeSequenceableLoader([Landroidx/media2/exoplayer/external/source/SequenceableLoader;)Landroidx/media2/exoplayer/external/source/SequenceableLoader;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loaders"
        }
    .end annotation

    .line 32
    new-instance v0, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoader;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoader;-><init>([Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    return-object v0
.end method
