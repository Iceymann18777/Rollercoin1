.class public final Landroidx/media2/exoplayer/external/util/TraceUtil;
.super Ljava/lang/Object;
.source "TraceUtil.java"


# direct methods
.method public static beginSection(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sectionName"
        }
    .end annotation

    .line 42
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    .line 43
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSectionV18(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private static beginSectionV18(Ljava/lang/String;)V
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sectionName"
        }
    .end annotation

    .line 60
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static endSection()V
    .registers 2

    .line 53
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    .line 54
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSectionV18()V

    :cond_9
    return-void
.end method

.method private static endSectionV18()V
    .registers 0

    .line 65
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
