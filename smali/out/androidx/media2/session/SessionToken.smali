.class public final Landroidx/media2/session/SessionToken;
.super Ljava/lang/Object;
.source "SessionToken.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/SessionToken$SessionTokenImpl;
    }
.end annotation


# instance fields
.field mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 179
    instance-of v0, p1, Landroidx/media2/session/SessionToken;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 182
    :cond_6
    check-cast p1, Landroidx/media2/session/SessionToken;

    .line 183
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    iget-object p1, p1, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 174
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
