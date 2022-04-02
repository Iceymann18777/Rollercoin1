.class public final Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;
.super Ljava/io/IOException;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IllegalClippingException"
.end annotation


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 69
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;->getReasonDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Illegal clipping: "

    if-eqz v1, :cond_15

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1a
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 70
    iput p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;->reason:I

    return-void
.end method

.method private static getReasonDescription(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const-string p0, "unknown"

    return-object p0

    :cond_b
    const-string p0, "start exceeds end"

    return-object p0

    :cond_e
    const-string p0, "not seekable to start"

    return-object p0

    :cond_11
    const-string p0, "invalid period count"

    return-object p0
.end method
