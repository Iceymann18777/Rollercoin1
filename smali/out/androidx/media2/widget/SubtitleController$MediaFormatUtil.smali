.class Landroidx/media2/widget/SubtitleController$MediaFormatUtil;
.super Ljava/lang/Object;
.source "SubtitleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaFormatUtil"
.end annotation


# direct methods
.method static getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .registers 3

    .line 272
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    return p2
.end method
