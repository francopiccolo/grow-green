"""empty message

Revision ID: f4592d255d83
Revises: 
Create Date: 2022-10-15 13:43:39.134725

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'f4592d255d83'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('city',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.Text(), nullable=True),
    sa.PrimaryKeyConstraint('id')
    )
    op.create_table('plant',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.Text(), nullable=True),
    sa.Column('description', sa.Text(), nullable=True),
    sa.Column('picture', sa.Text(), nullable=True),
    sa.Column('difficulty', sa.Enum('EASY', 'MEDIUM', 'HARD', name='difficulty'), nullable=True),
    sa.Column('sow', sa.Text(), nullable=True),
    sa.Column('grow', sa.Text(), nullable=True),
    sa.Column('harvest', sa.Text(), nullable=True),
    sa.Column('sunlight_level', sa.Enum('SHADE', 'PARTIAL_SHADE', 'SUNLIGHT', name='sunlight'), nullable=True),
    sa.Column('watering_freq', sa.Enum('WEEKLY', 'DAILY', name='frequency'), nullable=True),
    sa.Column('seed_depth', sa.Integer(), nullable=True),
    sa.Column('seed_distance', sa.Integer(), nullable=True),
    sa.Column('sow_to_harvest', sa.Integer(), nullable=True),
    sa.PrimaryKeyConstraint('id')
    )
    op.create_table('season',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('plant_id', sa.Integer(), nullable=True),
    sa.Column('city_id', sa.Integer(), nullable=True),
    sa.Column('sow_start', sa.Date(), nullable=True),
    sa.Column('sow_end', sa.Date(), nullable=True),
    sa.Column('grow_start', sa.Date(), nullable=True),
    sa.Column('grow_end', sa.Date(), nullable=True),
    sa.Column('harvest_start', sa.Date(), nullable=True),
    sa.Column('harvest_end', sa.Date(), nullable=True),
    sa.ForeignKeyConstraint(['city_id'], ['city.id'], ),
    sa.ForeignKeyConstraint(['plant_id'], ['plant.id'], ),
    sa.PrimaryKeyConstraint('id')
    )
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('season')
    op.drop_table('plant')
    op.drop_table('city')
    # ### end Alembic commands ###
