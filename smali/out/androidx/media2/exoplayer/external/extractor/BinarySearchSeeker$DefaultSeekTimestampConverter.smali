.class public final Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekTimestampConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSeekTimestampConverter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timeUsToTargetTime(J)J
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeUs"
        }
    .end annotation

    return-wide p1
.end method
