.class public final Landroidx/media2/session/MediaSession$CommandButton;
.super Ljava/lang/Object;
.source "MediaSession.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommandButton"
.end annotation


# instance fields
.field mCommand:Landroidx/media2/session/SessionCommand;

.field mDisplayName:Ljava/lang/CharSequence;

.field mEnabled:Z

.field mExtras:Landroid/os/Bundle;

.field mIconResId:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
