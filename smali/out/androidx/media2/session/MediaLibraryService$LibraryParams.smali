.class public final Landroidx/media2/session/MediaLibraryService$LibraryParams;
.super Ljava/lang/Object;
.source "MediaLibraryService.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaLibraryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryParams"
.end annotation


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mOffline:I

.field mRecent:I

.field mSuggested:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
