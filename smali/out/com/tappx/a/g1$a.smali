.class public Lcom/tappx/a/g1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:D

.field public final b:D

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(DDJJ)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/tappx/a/g1$a;->a:D

    .line 3
    iput-wide p3, p0, Lcom/tappx/a/g1$a;->b:D

    .line 4
    iput-wide p5, p0, Lcom/tappx/a/g1$a;->c:J

    .line 5
    iput-wide p7, p0, Lcom/tappx/a/g1$a;->d:J

    return-void
.end method
