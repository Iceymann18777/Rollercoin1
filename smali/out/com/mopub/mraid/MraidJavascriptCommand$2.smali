.class final enum Lcom/mopub/mraid/MraidJavascriptCommand$2;
.super Lcom/mopub/mraid/MraidJavascriptCommand;
.source "MraidJavascriptCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidJavascriptCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/mraid/MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/mopub/mraid/MraidJavascriptCommand$1;)V

    return-void
.end method


# virtual methods
.method requiresClick(Lcom/mopub/mraid/PlacementType;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
