.class public abstract Ljavax/mail/search/k;
.super Ljavax/mail/search/ComparisonTerm;
.source "LLII"


# static fields
.field private static final serialVersionUID:J = -0x60a39325f9860814L


# instance fields
.field protected number:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljavax/mail/search/ComparisonTerm;-><init>()V

    iput p1, p0, Ljavax/mail/search/IntegerComparisonTerm;->comparison:I

    iput p2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    return-void
.end method


# virtual methods
