.class Landroidx/media2/widget/Cea608CaptionRenderer;
.super Landroidx/media2/widget/SubtitleController$Renderer;
.source "Cea608CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;,
        Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CaptionTrack;
    }
.end annotation


# instance fields
.field private mCCWidget:Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroidx/media2/widget/SubtitleController$Renderer;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/media2/widget/Cea608CaptionRenderer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createTrack(Landroid/media/MediaFormat;)Landroidx/media2/widget/SubtitleTrack;
    .registers 5

    const-string v0, "mime"

    .line 65
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/cea-608"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 67
    iget-object v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer;->mCCWidget:Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;

    if-nez v0, :cond_1b

    .line 68
    new-instance v0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;

    iget-object v1, p0, Landroidx/media2/widget/Cea608CaptionRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;-><init>(Landroidx/media2/widget/Cea608CaptionRenderer;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer;->mCCWidget:Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;

    .line 70
    :cond_1b
    new-instance v0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CaptionTrack;

    iget-object v1, p0, Landroidx/media2/widget/Cea608CaptionRenderer;->mCCWidget:Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;

    invoke-direct {v0, v1, p1}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CaptionTrack;-><init>(Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;Landroid/media/MediaFormat;)V

    return-object v0

    .line 72
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supports(Landroid/media/MediaFormat;)Z
    .registers 4

    const-string v0, "mime"

    .line 56
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 57
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "text/cea-608"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method
