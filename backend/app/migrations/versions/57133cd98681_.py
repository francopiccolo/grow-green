"""empty message

Revision ID: 57133cd98681
Revises: f4592d255d83
Create Date: 2022-10-15 18:25:53.647861

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '57133cd98681'
down_revision = 'f4592d255d83'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('category',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.Text(), nullable=True),
    sa.PrimaryKeyConstraint('id')
    )
    op.create_table('product',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.Text(), nullable=True),
    sa.Column('description', sa.Text(), nullable=True),
    sa.Column('picture', sa.Text(), nullable=True),
    sa.Column('sku', sa.Text(), nullable=True),
    sa.Column('price', sa.Float(), nullable=True),
    sa.Column('discounted_price', sa.Float(), nullable=True),
    sa.Column('brand', sa.Text(), nullable=True),
    sa.Column('category_id', sa.Integer(), nullable=True),
    sa.ForeignKeyConstraint(['category_id'], ['category.id'], ),
    sa.PrimaryKeyConstraint('id')
    )
    op.drop_table('city')
    op.drop_table('season')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('season',
    sa.Column('id', sa.INTEGER(), nullable=False),
    sa.Column('plant_id', sa.INTEGER(), nullable=True),
    sa.Column('city_id', sa.INTEGER(), nullable=True),
    sa.Column('sow_start', sa.DATE(), nullable=True),
    sa.Column('sow_end', sa.DATE(), nullable=True),
    sa.Column('grow_start', sa.DATE(), nullable=True),
    sa.Column('grow_end', sa.DATE(), nullable=True),
    sa.Column('harvest_start', sa.DATE(), nullable=True),
    sa.Column('harvest_end', sa.DATE(), nullable=True),
    sa.ForeignKeyConstraint(['city_id'], ['city.id'], ),
    sa.ForeignKeyConstraint(['plant_id'], ['plant.id'], ),
    sa.PrimaryKeyConstraint('id')
    )
    op.create_table('city',
    sa.Column('id', sa.INTEGER(), nullable=False),
    sa.Column('name', sa.TEXT(), nullable=True),
    sa.PrimaryKeyConstraint('id')
    )
    op.drop_table('product')
    op.drop_table('category')
    # ### end Alembic commands ###
