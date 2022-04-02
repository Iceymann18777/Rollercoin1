.class public final Lcom/appnext/base/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/base/a$a;
    }
.end annotation


# instance fields
.field private ds:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/appnext/base/a;->ds:I

    return-void
.end method


# virtual methods
.method public final V()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/appnext/base/a;->ds:I

    return v0
.end method
