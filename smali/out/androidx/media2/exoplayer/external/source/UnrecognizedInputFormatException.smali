.class public Landroidx/media2/exoplayer/external/source/UnrecognizedInputFormatException;
.super Landroidx/media2/exoplayer/external/ParserException;
.source "UnrecognizedInputFormatException.java"


# instance fields
.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "uri"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/UnrecognizedInputFormatException;->uri:Landroid/net/Uri;

    return-void
.end method
