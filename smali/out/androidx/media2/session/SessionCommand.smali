.class public final Landroidx/media2/session/SessionCommand;
.super Ljava/lang/Object;
.source "SessionCommand.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/SessionCommand$Range;
    }
.end annotation


# static fields
.field static final VERSION_LIBRARY_COMMANDS_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$Range;",
            ">;"
        }
    .end annotation
.end field

.field static final VERSION_PLAYER_BASIC_COMMANDS_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$Range;",
            ">;"
        }
    .end annotation
.end field

.field static final VERSION_PLAYER_HIDDEN_COMMANDS_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$Range;",
            ">;"
        }
    .end annotation
.end field

.field static final VERSION_PLAYER_PLAYLIST_COMMANDS_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$Range;",
            ">;"
        }
    .end annotation
.end field

.field static final VERSION_SESSION_COMMANDS_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$Range;",
            ">;"
        }
    .end annotation
.end field

.field static final VERSION_VOLUME_COMMANDS_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$Range;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCommandCode:I

.field mCustomAction:Ljava/lang/String;

.field mCustomExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 140
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_BASIC_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    .line 141
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_PLAYLIST_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    .line 142
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_HIDDEN_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    .line 386
    sget-object v0, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_BASIC_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/media2/session/SessionCommand$Range;

    const/16 v3, 0x2710

    const/16 v4, 0x2714

    invoke-direct {v2, v3, v4}, Landroidx/media2/session/SessionCommand$Range;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_PLAYLIST_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    new-instance v2, Landroidx/media2/session/SessionCommand$Range;

    const/16 v3, 0x2715

    const/16 v4, 0x2722

    invoke-direct {v2, v3, v4}, Landroidx/media2/session/SessionCommand$Range;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_HIDDEN_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    new-instance v2, Landroidx/media2/session/SessionCommand$Range;

    const/16 v3, 0x2af8

    const/16 v4, 0x2afa

    invoke-direct {v2, v3, v4}, Landroidx/media2/session/SessionCommand$Range;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->VERSION_VOLUME_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    .line 432
    new-instance v2, Landroidx/media2/session/SessionCommand$Range;

    const/16 v3, 0x7530

    const/16 v4, 0x7531

    invoke-direct {v2, v3, v4}, Landroidx/media2/session/SessionCommand$Range;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->VERSION_SESSION_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    .line 532
    new-instance v2, Landroidx/media2/session/SessionCommand$Range;

    const v3, 0x9c40

    const v4, 0x9c4a

    invoke-direct {v2, v3, v4}, Landroidx/media2/session/SessionCommand$Range;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->VERSION_LIBRARY_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    .line 591
    new-instance v2, Landroidx/media2/session/SessionCommand$Range;

    const v3, 0xc350

    const v4, 0xc356

    invoke-direct {v2, v3, v4}, Landroidx/media2/session/SessionCommand$Range;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_d

    .line 619
    iput p1, p0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    const/4 p1, 0x0

    .line 620
    iput-object p1, p0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    .line 621
    iput-object p1, p0, Landroidx/media2/session/SessionCommand;->mCustomExtras:Landroid/os/Bundle;

    return-void

    .line 617
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "commandCode shouldn\'t be COMMAND_CODE_CUSTOM"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 665
    instance-of v0, p1, Landroidx/media2/session/SessionCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 668
    :cond_6
    check-cast p1, Landroidx/media2/session/SessionCommand;

    .line 669
    iget v0, p0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    iget v2, p1, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    .line 670
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public getCommandCode()I
    .registers 2

    .line 644
    iget v0, p0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 675
    iget-object v1, p0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
