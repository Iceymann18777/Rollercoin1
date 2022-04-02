.class final Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClippingSampleStream"
.end annotation


# instance fields
.field public final childStream:Landroidx/media2/exoplayer/external/source/SampleStream;

.field private sentEos:Z

.field final synthetic this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;Landroidx/media2/exoplayer/external/source/SampleStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "childStream"
        }
    .end annotation

    .line 286
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media2/exoplayer/external/source/SampleStream;

    return-void
.end method


# virtual methods
.method public clearSentEos()V
    .registers 2

    const/4 v0, 0x0

    .line 291
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    return-void
.end method

.method public isReady()Z
    .registers 2

    .line 296
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media2/exoplayer/external/source/SampleStream;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/SampleStream;->isReady()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media2/exoplayer/external/source/SampleStream;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method public readData(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "formatHolder",
            "buffer",
            "requireFormat"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_a

    return v1

    .line 310
    :cond_a
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_14

    .line 311
    invoke-virtual {p2, v2}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->setFlags(I)V

    return v3

    .line 314
    :cond_14
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media2/exoplayer/external/source/SampleStream;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/SampleStream;->readData(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_50

    .line 316
    iget-object p2, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/Format;

    .line 317
    iget p3, p2, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    if-nez p3, :cond_2f

    iget p3, p2, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    if-eqz p3, :cond_4f

    .line 319
    :cond_2f
    iget-object p3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    iget-wide v1, p3, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->startUs:J

    const-wide/16 v6, 0x0

    const/4 p3, 0x0

    cmp-long v3, v1, v6

    if-eqz v3, :cond_3c

    const/4 v1, 0x0

    goto :goto_3e

    :cond_3c
    iget v1, p2, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    .line 320
    :goto_3e
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_47

    goto :goto_49

    :cond_47
    iget p3, p2, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    .line 321
    :goto_49
    invoke-virtual {p2, v1, p3}, Landroidx/media2/exoplayer/external/Format;->copyWithGaplessInfo(II)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    iput-object p2, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    :cond_4f
    return v0

    .line 325
    :cond_50
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    iget-wide v6, p1, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->endUs:J

    cmp-long p1, v6, v4

    if-eqz p1, :cond_7a

    if-ne p3, v3, :cond_64

    iget-wide v6, p2, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    iget-wide v8, p1, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->endUs:J

    cmp-long p1, v6, v8

    if-gez p1, :cond_70

    :cond_64
    if-ne p3, v1, :cond_7a

    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    .line 328
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_7a

    .line 329
    :cond_70
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->clear()V

    .line 330
    invoke-virtual {p2, v2}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->setFlags(I)V

    const/4 p1, 0x1

    .line 331
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    return v3

    :cond_7a
    return p3
.end method

.method public skipData(J)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, -0x3

    return p1

    .line 342
    :cond_a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media2/exoplayer/external/source/SampleStream;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/SampleStream;->skipData(J)I

    move-result p1

    return p1
.end method
