.class public final Landroidx/media2/session/SessionCommandGroup;
.super Ljava/lang/Object;
.source "SessionCommandGroup.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/SessionCommandGroup$Builder;
    }
.end annotation


# instance fields
.field mCommands:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media2/session/SessionCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media2/session/SessionCommand;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    if-eqz p1, :cond_f

    .line 59
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_f
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 103
    :cond_4
    instance-of v1, p1, Landroidx/media2/session/SessionCommandGroup;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 105
    :cond_a
    check-cast p1, Landroidx/media2/session/SessionCommandGroup;

    .line 106
    iget-object v1, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    if-nez v1, :cond_17

    .line 107
    iget-object p1, p1, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    if-nez p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0

    .line 109
    :cond_17
    iget-object p1, p1, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasCommand(I)Z
    .registers 4

    if-eqz p1, :cond_1e

    .line 85
    iget-object v0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/SessionCommand;

    .line 86
    invoke-virtual {v1}, Landroidx/media2/session/SessionCommand;->getCommandCode()I

    move-result v1

    if-ne v1, p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1

    .line 83
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use hasCommand(Command) for custom command"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_27

    :goto_26
    throw p1

    :goto_27
    goto :goto_26
.end method

.method public hashCode()I
    .registers 2

    .line 114
    iget-object v0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
