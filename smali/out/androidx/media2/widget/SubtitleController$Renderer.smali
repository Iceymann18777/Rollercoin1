.class public abstract Landroidx/media2/widget/SubtitleController$Renderer;
.super Ljava/lang/Object;
.source "SubtitleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Renderer"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createTrack(Landroid/media/MediaFormat;)Landroidx/media2/widget/SubtitleTrack;
.end method

.method public abstract supports(Landroid/media/MediaFormat;)Z
.end method
